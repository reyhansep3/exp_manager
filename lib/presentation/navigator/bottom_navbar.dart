import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/core/utils/route.dart';
import 'package:exp_manager/domain/navbar_view_model.dart';
import 'package:exp_manager/presentation/home/page/home_screen.dart';
import 'package:exp_manager/presentation/profile/page/profile_screen.dart';
import 'package:exp_manager/presentation/chatbot/page/chat_screen.dart';
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
              Navigator.of(context).push(slideRoute(const ChatScreen()));
            },
            child: const Icon(Icons.add, size: 30, color: AppColor.containerColor,)
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:
          Consumer<NavbarViewModel>(builder: (context, navbar, _) {
          return BottomAppBar(
            surfaceTintColor: AppColor.containerColor,
            color: AppColor.ligthDarkBlue,
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
                              ? AppColor.containerColor
                              : Colors.grey,
                        ),
                        Text(
                          "Beranda",
                          style: AppFontStyle.smallText.copyWith(
                            color: navbarProvider.currentTab == 0
                                ? AppColor.containerColor
                                : Colors.grey
                          ),
                          textScaler: const TextScaler.linear(1)
                        )
                      ]
                    )
                  )
                ),
                SizedBox(
                  // width: MediaQuery.sizeOf(context).height * 0.07,
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
                              ? AppColor.containerColor
                              : Colors.grey,
                        ),
                        Text(
                          "Accounts",
                          style: AppFontStyle.smallText.copyWith(
                            color: navbarProvider.currentTab == 1
                                ? AppColor.containerColor
                                : Colors.grey,
                          ),
                          textScaler: const TextScaler.linear(1)
                        )
                      ],
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 20,
                // ),
                // SizedBox(
                //   // width: MediaQuery.sizeOf(context).height * 0.07,
                //   child: GestureDetector(
                //     onTap: () {
                //       navbarProvider.changePage(const StatsScreen(), 2);
                //     },
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(
                //           Icons.abc_sharp,
                //           size: 23,
                //           color: navbarProvider.currentTab == 2
                //               ? AppColor.containerColor
                //               : Colors.grey,
                //         ),
                //         Text(
                //           "Chat",
                //           style: AppFontStyle.smallText.copyWith(
                //             color: navbarProvider.currentTab == 2
                //                 ? AppColor.containerColor
                //                 : Colors.grey
                //           ),
                //           textScaler: const TextScaler.linear(1)
                //         )
                //       ]
                //     )
                //   )
                // ),
                // SizedBox(
                //   width: MediaQuery.sizeOf(context).height * 0.07,
                //   child: GestureDetector(
                //     onTap: () {
                //       navbarProvider.changePage(const ProfileScreen(), 3);
                //     },
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(
                //           Icons.abc_sharp,
                //           size: 23,
                //           color: navbarProvider.currentTab == 3
                //               ? AppColor.containerColor
                //               : Colors.grey
                //         ),
                //         Text(
                //           "Profil",
                //           style: AppFontStyle.smallText.copyWith(
                //             color: navbarProvider.currentTab == 3
                //                 ? AppColor.containerColor
                //                 : Colors.grey
                //           ),
                //           textScaler: const TextScaler.linear(1)
                //         )
                //       ]
                //     )
                //   )
                // )
              ]
            )
          );
        })
      )
    );
  }
}
