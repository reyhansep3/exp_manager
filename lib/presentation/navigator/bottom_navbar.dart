import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/common_bottom_sheet.dart';
import 'package:exp_manager/core/utils/extension.dart';
import 'package:exp_manager/domain/navbar_view_model.dart';
import 'package:exp_manager/presentation/home/page/home_screen.dart';
import 'package:exp_manager/presentation/profile/page/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeNav extends StatefulWidget {
  int currentTab;

  HomeNav({
    super.key, 
    this.currentTab = 0
  });

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  late NavbarViewModel navbarProvider;

  @override
  void initState() {
    super.initState();

    navbarProvider = Provider.of<NavbarViewModel>(context, listen: false);
    
  
    if (widget.currentTab == 0) {
      navbarProvider.currentScreen = const HomeScreen();
      navbarProvider.currentTab = 0;
    } else if (widget.currentTab == 1) {
      navbarProvider.currentScreen = const ProfileScreen();
      navbarProvider.currentTab = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: AppColor.shadowGrey,
        body: Consumer<NavbarViewModel>(builder: (context, navbar, _) {
          return PageStorage(
              bucket: navbarProvider.bucket, child: navbarProvider.currentScreen);
        }),
        floatingActionButton: SizedBox(
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: AppColor.shadowGrey,
            shape: const CircleBorder(
              side: BorderSide(width: 3, color: Color(0xfff2f6ff))
            ),
            onPressed: () {
              commonBottomSheet(
                context, 
                dismissAction: (value) {}, 
                height: context.height*0.4,
                widgets: [
                  Column(
                    children: [
                      SizedBox(height: context.height*0.1,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Icon(Icons.mic),
                        ),
                      ),
                    ],
                  )
                ]
              );
            },
            child: const Icon(Icons.mic, size: 30, color: AppColor.containerColor,)
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:
          Consumer<NavbarViewModel>(builder: (context, navbar, _) {
          return BottomAppBar(
            surfaceTintColor: AppColor.containerColor,
            color: AppColor.containerColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      navbarProvider.changePage(const HomeScreen(), 0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 23,
                          color: navbarProvider.currentTab == 0
                              ? AppColor.greyish
                              : Colors.grey,
                        ),
                        Text(
                          "Beranda",
                          style: AppFontStyle.smallText.copyWith(
                            color: navbarProvider.currentTab == 0
                                ? AppColor.greyish
                                : Colors.grey
                          ),
                          textScaler: const TextScaler.linear(1)
                        )
                      ]
                    )
                  )
                ),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      navbarProvider.changePage(const ProfileScreen(), 1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          size: 23,
                          color: navbarProvider.currentTab == 1
                              ? AppColor.greyish
                              : Colors.grey,
                        ),
                        Text(
                          "Target",
                          style: AppFontStyle.smallText.copyWith(
                            color: navbarProvider.currentTab == 1
                                ? AppColor.greyish
                                : Colors.grey,
                          ),
                          textScaler: const TextScaler.linear(1)
                        )
                      ],
                    ),
                  ),
                ),
                
              ]
            )
          );
        })
      )
    );
  }
}
