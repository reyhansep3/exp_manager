import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/core/utils/route.dart';
import 'package:exp_manager/presentation/chatbot/page/chat_screen.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_bloc.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseMenu extends StatelessWidget {
  const ExpenseMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LightingModeBloc, LightingModeState>(
      builder: (context, state) {
        final isDark = state.maybeWhen(
          darkMode: () => true,
          orElse: () => false,
        );
        return Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: context.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: !isDark ? AppColor.greyish : AppColor.containerColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.receipt_long_outlined,
                        color: isDark ? AppColor.tirnaryTextColor : AppColor.containerColor,
                      ),
                      Text(
                        "Scan QR",
                        style: AppFontStyle.mediumText.copyWith(
                          color: isDark ? AppColor.tirnaryTextColor : AppColor.containerColor
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.03,
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(slideRoute(const ChatScreen()));
                },
                child: Container(
                  width: context.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: !isDark ? AppColor.greyish : AppColor.containerColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.rocket,
                        color: isDark ? AppColor.tirnaryTextColor : AppColor.containerColor
                      ),
                      Text(
                        "Assistant",
                        style: AppFontStyle.mediumText.copyWith(
                          color: isDark ? AppColor.tirnaryTextColor : AppColor.containerColor
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.03,
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: context.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: !isDark ? AppColor.greyish : AppColor.containerColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.arrow_outward_outlined,
                        color: isDark ? AppColor.tirnaryTextColor : AppColor.containerColor
                      ),
                      Text(
                        "Target",
                        style: AppFontStyle.mediumText.copyWith(
                          color: isDark ? AppColor.tirnaryTextColor : AppColor.containerColor
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
