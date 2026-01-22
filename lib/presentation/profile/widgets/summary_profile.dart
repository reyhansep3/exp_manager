import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:flutter/material.dart';


class SummaryProfile extends StatefulWidget {
  const SummaryProfile({super.key});

  @override
  State<SummaryProfile> createState() => _SummaryProfileState();
}

class _SummaryProfileState extends State<SummaryProfile> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColor.containerColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("My Expense",
                  style: AppFontStyle
                  .largeText
                  .copyWith(
                    color: AppColor.greyish,
                      fontWeight:
                          FontWeight.bold
                  )
                ),
                SizedBox(
                  height: context.height * 0.005,
                ),
                Text("My summary this month (private)",
                  style: AppFontStyle
                  .smallText
                  .copyWith(
                    color: AppColor.greyish,
                  )
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.calendar_month, size: 30,),
                    ),
                    SizedBox(
                      width: context.width * 0.025,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("17 February 2026",
                          style: AppFontStyle
                          .mediumText
                          .copyWith(
                            color: AppColor.greyish,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Text("you have saved 18% than last month",
                          style: AppFontStyle
                          .smallText
                          .copyWith(
                            color: AppColor.greyish,
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: context.height * 0.02,
        ),
        Container(
          width: context.width,
          decoration: BoxDecoration(
            color: AppColor.containerColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColor.contextGrey,
                    ),
                    SizedBox(
                      width: context.width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Monthly Expense Limit",
                          style: AppFontStyle
                          .largeText
                          .copyWith(
                            color: AppColor.greyish,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Text("900.000 of 1.000.000",
                          style: AppFontStyle
                          .mediumText
                          .copyWith(
                            color: AppColor.greyish,
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined, 
                  size: 20, 
                  color: AppColor.greyish
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
// Widget summaryProfile(dynamic context){
  
// }