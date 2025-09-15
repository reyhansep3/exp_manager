import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_bloc.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_event.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRowChat extends StatefulWidget {
  const TopRowChat({super.key});

  @override
  State<TopRowChat> createState() => _TopRowChatState();
}

class _TopRowChatState extends State<TopRowChat> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LightingModeBloc, LightingModeState>(
      builder: (context, state) {
        final isDark =
              state.maybeWhen(darkMode: () => true, orElse: () => false);
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Close",
                    style: AppFontStyle.largeText.copyWith(
                      fontWeight: FontWeight.bold,
                      color: isDark ? AppColor.backgroundColor : AppColor.shadowGrey,
                    ),
                  ),
                ),
                Text(
                  "EHEK",
                  style: AppFontStyle.boldMediumText.copyWith(
                    color: isDark ? AppColor.backgroundColor : AppColor.shadowGrey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<LightingModeBloc>().add(const LightingModeEvent.toggle());
                  },
                  child: Icon(
                      Icons.light_mode_rounded,
                      color: isDark
                          ? AppColor
                              .containerColor
                          : AppColor.shadowGrey
                    )
                  )
              ],
            ),            
          ],
        );
      },
    );
  }
}