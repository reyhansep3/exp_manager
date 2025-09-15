import 'dart:convert';
import 'package:exp_manager/presentation/chatbot/manager/chat/chat_event.dart';
import 'package:exp_manager/presentation/chatbot/manager/chat/chat_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState.initial()) {
    on<SendMessage>(_onSendMessage);
  }

  final List<Map<String, String>> chatMessages = [
    {"role": "system", "content": "What do you want nigga?"}
  ];

  late TextEditingController chatController = TextEditingController();
  GlobalKey<FormState> chatFormKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateChat = AutovalidateMode.disabled;

  Future<void> _onSendMessage(
    SendMessage event,
    Emitter<ChatState> emit,
  ) async {
    final message = {"role": "user", "content": event.prompt};
    chatMessages.add(message);

    emit(ChatState.loading(List.from(chatMessages)));

    final data = {
      "model": "llama3.2",
      "messages": chatMessages,
      "stream": false,
    };

    try {
      final response = await http.post(
        Uri.parse("http://localhost:11434/api/chat"),
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        chatMessages.add({
          "role": "system",
          "content": responseData["message"]["content"]
        });
        chatController.clear();
        emit(ChatState.loaded(List.from(chatMessages)));
      } else {
        chatMessages.remove(message);
        emit(ChatState.error(List.from(chatMessages), "Failed response"));
      }
    } catch (e) {
      chatMessages.remove(message);
      emit(ChatState.error(List.from(chatMessages), e.toString()));
    }
  }

  @override
  Future<void> close() {
    chatController.dispose();
    return super.close();
  }
}
