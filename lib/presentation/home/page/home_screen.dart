import 'dart:ui';

import 'package:exp_manager/core/app_color.dart';
import 'package:exp_manager/core/app_fonts.dart';
import 'package:exp_manager/presentation/home/widget/balance.dart';
import 'package:exp_manager/presentation/home/widget/transaction.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.sizeOf(context).height;
    final width= MediaQuery.sizeOf(context).width;
    
    return Container(
   
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColor.darkBlue, AppColor.containerColor]
          // stops: [
          //   0.1,
          //   0.7,
          //   0.8,
          //   1.0,
          // ],
          // colors: [
          //   Colors.transparent,
          //   AppColor.darkBlue,
          //   Color(0x412B136C),
          //   Colors.teal,
          // ],

        )
      ),
      
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: SizedBox(
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: kToolbarHeight,),
                        GestureDetector(
                          onTap: (){
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.arrow_drop_down_outlined, color: AppColor.containerColor,),
                              Text("Month - Year", style: AppFontStyle.largeText.copyWith(color: AppColor.primaryTextColor, fontWeight: FontWeight.bold)),
                            ],
                          )),
                        SizedBox(height: height*0.04,),
                        const TotalExpense(),
                        SizedBox(height: height*0.01,),
                        
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
    );
  }
}