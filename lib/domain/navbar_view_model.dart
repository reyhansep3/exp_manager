import 'package:exp_manager/presentation/home/page/home_screen.dart';
import 'package:exp_manager/presentation/profile/page/profile_screen.dart';
import 'package:flutter/material.dart';

class NavbarViewModel extends ChangeNotifier {
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen(); 
  int currentTab = 0;
  bool isMainScreen = true;

  void changePage(Widget page, int tab) {
    currentScreen = page;
    currentTab = tab;
    notifyListeners();
  }

  void changeSubpage(Widget subpage) {
    currentScreen = subpage;
    notifyListeners();
  }

  void switchCKLLogo() {
    if (currentScreen is HomeScreen ||
        // currentScreen is StatsScreen||
        // currentScreen is ProfileScreen||
        currentScreen is ProfileScreen
        ) {
      isMainScreen = true;
    } else {
      isMainScreen = false;
    }
    notifyListeners();
  }
}