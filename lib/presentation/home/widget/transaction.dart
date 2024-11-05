import 'package:exp_manager/core/app_color.dart';
import 'package:exp_manager/core/app_fonts.dart';
import 'package:exp_manager/presentation/home/widget/transaction_items.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatefulWidget {
  const RecentTransaction({super.key});

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.sizeOf(context).height;
    // final width= MediaQuery.sizeOf(context).width;
    return Container(
      decoration: BoxDecoration(
        color: AppColor.darkBlue.withOpacity(0.3),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Account Balance", style: AppFontStyle.mediumText.copyWith(color: AppColor.primaryTextColor, fontWeight: FontWeight.bold),),
            SizedBox(height: height*0.01,),
            ...List.generate(10, (index) {
              return Column(
                children: [
                  customTransactionItems(
                      context, 
                      const Icon(Icons.shopping_bag, size: 30,),
                      "food", 
                      "amount", 
                      const Text("data"), 
                      "description", 
                      "time",
                      Colors.amber),
                  SizedBox(
                    height: height*0.01,
                  )
                ],
              );
            },
            )
            
          ],
        ),
      ),
    );
  }
}