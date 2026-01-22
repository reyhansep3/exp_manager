import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget customTransactionItems(
  BuildContext context,
  Widget icons,
  String title,
  String amount,
  Widget widget,
  String description,
  String time,
  Color colors,
  Color boxColor,
  Color textColor,
  ) {
  return Container(
    padding: EdgeInsets.all(context.height*0.01),
    decoration:  BoxDecoration(
      color: boxColor,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
      children: [
        icons,
        SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
        Flexible(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: AppFontStyle.mediumText.copyWith(color: textColor),),
                  Text(amount, style: AppFontStyle.mediumText.copyWith(color: textColor),)
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: AppFontStyle.mediumText.copyWith(color: textColor),),
                  Text(amount, style: AppFontStyle.mediumText.copyWith(color: textColor),)
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}