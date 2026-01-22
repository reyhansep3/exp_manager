import 'dart:ui';

import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_bloc.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_event.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_state.dart';
import 'package:exp_manager/presentation/home/widget/balance.dart';
import 'package:exp_manager/presentation/home/widget/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LightingModeBloc(),
      child: BlocBuilder<LightingModeBloc, LightingModeState>(
        builder: (context, state) {
          final isDark = state.maybeWhen(
            darkMode: () => false,
            orElse: () => true,
          );

          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: !isDark ? AppColor.tirnaryTextColor : AppColor.backgroundColor,
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: SizedBox(
                          width: context.width,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: kToolbarHeight,
                                    ),
                                     Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Welcome Back",
                                                style: AppFontStyle
                                                    .largeText
                                                    .copyWith(
                                                        color: !isDark ? AppColor.containerColor : AppColor
                                                            .shadowGrey ,
                                                        fontWeight:
                                                            FontWeight
                                                                .bold)),
                                            GestureDetector(
                                                onTap: () {
                                                  context.read<LightingModeBloc>().add(const LightingModeEvent.toggle());
                                                },
                                                child: Icon(
                                                    Icons.light_mode_rounded,
                                                    color: !isDark
                                                        ? AppColor
                                                            .containerColor
                                                        : AppColor.shadowGrey))
                                          ],
                                        ),
                                    SizedBox(
                                      height: context.height * 0.02,
                                    ),
                                    const TotalExpense(),
                                    // SizedBox(
                                    //   height: context.height * 0.02,
                                    // ),
                                    // const ExpenseMenu(),
                                  ],
                                ),
                              ),
                              
                              const RecentTransaction(),
                            ],
                          ),
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
  }
}
