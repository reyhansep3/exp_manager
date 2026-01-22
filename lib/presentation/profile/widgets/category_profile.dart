import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/presentation/profile/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class CategoryProfile extends StatefulWidget {
  const CategoryProfile({super.key});

  @override
  State<CategoryProfile> createState() => _CategoryProfileState();
}

class _CategoryProfileState extends State<CategoryProfile> {


  List<Color> categoryListColor = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.containerColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Category",
              style: AppFontStyle  
              .largeText
              .copyWith(
                color: AppColor.greyish,
                  fontWeight:
                      FontWeight.bold
              )
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            pieChart(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categoryListColor.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox.square(
                        dimension: 20.0, 
                        child: Container(
                          decoration: BoxDecoration(
                            color: categoryListColor[index],
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Category name"),
                      )
                    ],
                  ),
                  const Text("20%"),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}