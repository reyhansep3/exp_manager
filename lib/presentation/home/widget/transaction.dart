import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_bloc.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_state.dart';
import 'package:exp_manager/presentation/home/widget/transaction_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentTransaction extends StatefulWidget {
  const RecentTransaction({super.key});

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LightingModeBloc, LightingModeState>(
      builder: (context, state) {
        final isDark = state.maybeWhen(
          darkMode: () => true,
          orElse: () => false,
        );
    
        return Padding(
          padding: EdgeInsets.only(
              left: context.width * 0.05, right: context.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Balance",
                style: AppFontStyle.mediumText.copyWith(
                    color: isDark ? AppColor.containerColor : AppColor.shadowGrey , fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 100,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        customTransactionItems(
                            context,
                            const Icon(
                              Icons.shopping_bag,
                              size: 30,
                              color: AppColor.containerColor,
                            ),
                            "food",
                            "amount",
                            const Text("data"),
                            "description",
                            "time",
                            AppColor.shadowGrey),
                        SizedBox(
                          height: context.height * 0.01,
                        )
                      ],
                    );
                  })
            ],
          ),
        );
      },
    );
  }
}
