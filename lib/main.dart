import 'package:chapter_17_flutter_getx/screen_one.dart';
import 'package:chapter_17_flutter_getx/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Theme/themes.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      // theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // useMaterial3: true,
      // ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screenOne', page: () =>  ScreenOne()),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
      ],
    );
  }
}
