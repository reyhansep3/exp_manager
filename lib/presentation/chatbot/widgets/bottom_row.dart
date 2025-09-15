import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/custom_form.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/presentation/chatbot/manager/chat/chat_bloc.dart';
import 'package:exp_manager/presentation/chatbot/manager/chat/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomRow extends StatefulWidget {
  final void Function() onTapMessage;
  final void Function() onTapMic;
  const BottomRow({super.key, required this.onTapMessage, required this.onTapMic});

  @override
  State<BottomRow> createState() => _BottomRowState();
}

class _BottomRowState extends State<BottomRow> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        final chatBloc = context.read<ChatBloc>();
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: CustomForm(
                    key: chatBloc.chatFormKey,
                    autovalidateMode: chatBloc.autoValidateChat,
                    controller: chatBloc.chatController,
                    hint: "write whats on your mind?",
                    fillColor: AppColor.containerColor,
                    minLines: 1,
                    maxLines: 10,
                    suffixIcon: GestureDetector(
                      onTap: widget.onTapMessage,
                      child: const Icon(Icons.send, color: AppColor.shadowGrey,)
                    ),
                  ),
                ),
                SizedBox(width: context.width*0.02,),
                GestureDetector(
                  onTap: widget.onTapMic,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.containerColor,
                      border: Border.all(color: AppColor.shadowGrey)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(context.height*0.018),
                      child: const Icon(Icons.mic),
                    )
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
