import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/presentation/chatbot/manager/chat/chat_bloc.dart';
import 'package:exp_manager/presentation/chatbot/manager/chat/chat_event.dart';
import 'package:exp_manager/presentation/chatbot/manager/chat/chat_state.dart';
import 'package:exp_manager/presentation/chatbot/widgets/bottom_row.dart';
import 'package:exp_manager/presentation/chatbot/widgets/top_row.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_bloc.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _showPopup = true;
  late stt.SpeechToText _speech;
  bool _isLitsening = false;
  String _text = 'Press the button and start speaking';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

void _isListen() async {
  if (!_isLitsening) {
    bool available = await _speech.initialize(
      onStatus: (status) => debugPrint('onStatus: $status'),
      onError: (error) => debugPrint('onError: $error'),
    );
    if (available) {
      setState(() => _isLitsening = true);
      _speech.listen(
        onResult: (result) {
          setState(() {
            _text = result.recognizedWords;
          });
        },
      );
    }
  } else {
    setState(() => _isLitsening = false);
    _speech.stop();
  }
}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          final chatBloc = context.read<ChatBloc>();
          return BlocProvider(
            create: (context) => LightingModeBloc(),
            child: BlocBuilder<LightingModeBloc, LightingModeState>(
              builder: (context, state) {
                final isDark =
                    state.maybeWhen(darkMode: () => true, orElse: () => false);

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColor.shadowGrey
                        : AppColor.backgroundColor,
                  ),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Stack(
                      children: [
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: kToolbarHeight),
                                  TopRowChat(),
                                ],
                              ),
                            ),
                            Expanded(
                              child: BlocBuilder<ChatBloc, ChatState>(
                                builder: (context, state) {
                                  final messages = state.when(
                                    initial: () => [],
                                    loading: (messages) => messages,
                                    loaded: (messages) => messages,
                                    error: (messages, _) => messages,
                                  );
                                  return ListView.builder(
                                    itemCount: messages.length,
                                    itemBuilder: (context, index) {
                                      final message = messages[index];
                                      return Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: index ==
                                                        messages.length - 1
                                                    ? 50
                                                    : 0),
                                            child: Align(
                                              alignment:
                                                  message["role"] == "system"
                                                      ? Alignment.centerLeft
                                                      : Alignment.centerRight,
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8,
                                                        horizontal: 12),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  color: AppColor.containerColor,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: Text(
                                                    message["content"] ?? ""),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),

                        /// --- POPUP (muncul di awal)
                        // if (_showPopup)
                        //   Positioned(
                        //     top: 100,
                        //     left: 20,
                        //     right: 20,
                        //     child: 
                        //   ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.width * 0.04,
                                vertical: context.height * 0.02,
                              ),
                              child: Column(
                                children: [
                                  if(_showPopup)
                                    Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(vertical: 10),
                                        padding: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          color: AppColor.containerColor,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColor.shadowGrey
                                                .withValues(alpha: 0.04),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              // ignore: deprecated_member_use
                                              color: Colors.black.withOpacity(0.1),
                                              blurRadius: 8,
                                            )
                                          ],
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.info,
                                                color: isDark
                                                    ? AppColor.backgroundColor
                                                    : AppColor.shadowGrey),
                                            SizedBox(width: context.width * 0.03),
                                            Expanded(
                                              child: Text(
                                                "Silahkan ketik atau sebut pencatatan anda dengan menggunakan fitur di bawah ini",
                                                style: AppFontStyle.boldMediumText
                                                    .copyWith(
                                                  color: isDark
                                                      ? AppColor.backgroundColor
                                                      : AppColor.shadowGrey,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() => _showPopup = false);
                                              },
                                              child: const Icon(Icons.cancel,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  BottomRow(
                                    onTapMessage: () {
                                      if (chatBloc.chatController.text.isNotEmpty) {
                                        context.read<ChatBloc>().add(
                                            ChatEvent.sendMessage(
                                                chatBloc.chatController.text));
                                        chatBloc.chatController.clear();
                                      }
                                    },
                                    onTapMic: () {
                                      _isListen();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
