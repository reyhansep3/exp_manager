import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_bloc.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalExpense extends StatefulWidget {
  const TotalExpense({super.key});

  @override
  State<TotalExpense> createState() => _TotalExpenseState();
}

class _TotalExpenseState extends State<TotalExpense> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LightingModeBloc, LightingModeState>(
      builder: (context, state) {
        // final isDark = state.maybeWhen(
        //   darkMode: () => true,
        //   orElse: () => false,
        // );
        return Column(
          children: [
            Container(
              width: context.width,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColor.containerColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.monetization_on),
                      SizedBox(
                        width: context.width * 0.01,
                      ),
                      Text(
                        "Account Balance",
                        style: AppFontStyle.mediumText,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.height * 0.01,
                  ),
                  Text("Rp. 200.000.000",
                    style: AppFontStyle.mediumText.copyWith(fontSize: 30),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColor.backgroundColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: AppColor.containerColor,
                                  child: Icon(
                                    Icons.arrow_upward_rounded,color: AppColor.greyish,
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.02,
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Income",
                                        style: AppFontStyle.smallText
                                            .copyWith(
                                                color: AppColor.shadowGrey,
                                                fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "20%",
                                        style: AppFontStyle.mediumText
                                            .copyWith(
                                                color: AppColor.shadowGrey,
                                                fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
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
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColor.backgroundColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: AppColor.containerColor,
                                  child: Icon(
                                    Icons.arrow_downward_rounded,
                                    color: AppColor.greyish,
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.02,
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Expenses",
                                        style: AppFontStyle.smallText
                                            .copyWith(
                                                color: AppColor.shadowGrey,
                                                fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "10%",
                                        style: AppFontStyle.mediumText
                                            .copyWith(
                                                color: AppColor.shadowGrey,
                                                fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            
          ],
        );
      },
    );
  }
}
