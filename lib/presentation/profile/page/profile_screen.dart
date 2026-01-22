import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/presentation/profile/widgets/category_profile.dart';
import 'package:exp_manager/presentation/profile/widgets/summary_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.04,
              ),
              const SummaryProfile(),
              SizedBox(
                height: context.height * 0.015,
              ),
             const CategoryProfile()
            ],
          ),
        ),
      ),
    );
  }
}