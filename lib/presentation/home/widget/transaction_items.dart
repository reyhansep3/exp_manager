import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
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
  return Container(
    padding: EdgeInsets.all(context.height*0.01),
    decoration:  BoxDecoration(
      color: AppColor.containerColor,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
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
                  Text(title, style: AppFontStyle.mediumText.copyWith(color: AppColor.shadowGrey),),
                  Text(amount, style: AppFontStyle.mediumText.copyWith(color: AppColor.shadowGrey),)
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: AppFontStyle.mediumText.copyWith(color: AppColor.shadowGrey),),
                  Text(amount, style: AppFontStyle.mediumText.copyWith(color: AppColor.shadowGrey),)
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}