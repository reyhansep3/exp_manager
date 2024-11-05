import 'package:exp_manager/core/app_color.dart';
import 'package:exp_manager/core/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget customTransactionItems(
  BuildContext context,
  Icon icons,
  String title,
  String amount,
  Widget widget,
  String description,
  String time,
  Color colors
  ) {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: icons,
        ),
      ),
      SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
      Flexible(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: AppFontStyle.mediumText.copyWith(color: AppColor.primaryTextColor),),
                Text(amount, style: AppFontStyle.mediumText.copyWith(color: AppColor.primaryTextColor),)
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: AppFontStyle.mediumText.copyWith(color: AppColor.primaryTextColor),),
                Text(amount, style: AppFontStyle.mediumText.copyWith(color: AppColor.primaryTextColor),)
              ],
            )
          ],
        ),
      ),
    ],
  );
}