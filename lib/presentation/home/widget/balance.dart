import 'package:exp_manager/core/app_color.dart';
import 'package:exp_manager/core/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalExpense extends StatefulWidget {
  const TotalExpense({super.key});

  @override
  State<TotalExpense> createState() => _TotalExpenseState();
}

class _TotalExpenseState extends State<TotalExpense> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.sizeOf(context).height;
    final width= MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height*0.15,
          decoration: BoxDecoration(
            color: AppColor.darkBlue,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Account Balance", style: AppFontStyle.mediumText.copyWith(color: AppColor.secondaryTextColor),),
              SizedBox(height: height*0.005,),
              Text("Rp. 20.000.000", style: AppFontStyle.mediumText.copyWith(color: AppColor.primaryTextColor, fontWeight: FontWeight.bold, fontSize:35)),
            ],
          ),
        ),
        SizedBox(height: height*0.03,),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/icons/home/income.svg"
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.02,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Income", style: AppFontStyle.smallText.copyWith(
                                color: AppColor.containerColor, fontWeight: FontWeight.bold
                              ), overflow: TextOverflow.ellipsis,),
                              Text("Rp. 20.000.000.000", style: AppFontStyle.mediumText.copyWith(
                                color: AppColor.containerColor, fontWeight: FontWeight.bold
                              ), overflow: TextOverflow.ellipsis,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: width*0.03,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.red,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/icons/home/outcome.svg"
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.02,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Expenses", style: AppFontStyle.smallText.copyWith(
                                color: AppColor.containerColor, fontWeight: FontWeight.bold
                              ), overflow: TextOverflow.ellipsis,),
                              Text("Rp. 20.000.000.000", style: AppFontStyle.mediumText.copyWith(
                                color: AppColor.containerColor, fontWeight: FontWeight.bold
                              ), overflow: TextOverflow.ellipsis,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}