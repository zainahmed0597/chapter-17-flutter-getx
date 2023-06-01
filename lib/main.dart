import 'package:chapter_17_flutter_getx/Locale/languages.dart';
import 'package:chapter_17_flutter_getx/screen_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      // locale: Locale('en','US'),
      translations: Languages(),
      fallbackLocale: Locale('en','US'),
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      // theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // useMaterial3: true,
      // ),
      home: const ScreenThree(),
      // getPages: [
      //   GetPage(name: '/', page: () => const HomeScreen()),
      //   GetPage(name: '/screenOne', page: () =>  ScreenOne()),
      //   GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
      // ],
    );
  }
}
