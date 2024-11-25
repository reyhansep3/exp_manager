import 'package:device_preview/device_preview.dart';
import 'package:exp_manager/domain/navbar_view_model.dart';
import 'package:exp_manager/presentation/navigator/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      backgroundColor: Colors.white,
      enabled: true,
       devices: [
        Devices.android.samsungGalaxyA50,
        Devices.android.samsungGalaxyNote20, 
        Devices.android.samsungGalaxyS20, 
        Devices.android.samsungGalaxyNote20Ultra, 
        Devices.android.onePlus8Pro,
        Devices.android.sonyXperia1II, 

        Devices.ios.iPhoneSE, 
        Devices.ios.iPhone12,
        Devices.ios.iPhone12Mini,
        Devices.ios.iPhone12ProMax, 
        Devices.ios.iPhone13,
        Devices.ios.iPhone13ProMax,
        Devices.ios.iPhone13Mini,
        Devices.ios.iPhoneSE, 
      ],
      tools: const [
        DeviceSection(
          model: true, 
          orientation: false,
          frameVisibility: false, 
          virtualKeyboard: false, 
        ),

      ],
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavbarViewModel()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeNav(),
    );
  }
}