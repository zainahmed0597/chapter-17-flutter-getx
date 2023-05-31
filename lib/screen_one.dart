import 'package:chapter_17_flutter_getx/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var name;
   ScreenOne({Key? key, this.name}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Screen One: ' +Get.arguments[1]),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              Get.to(const ScreenTwo());
            }, child: const Text('Go Screen Two')),
          ),
          Center(
            child: TextButton(onPressed: (){
              Get.back();
            }, child: const Text('Go Back')),
          ),
        ],

      ),
    );
  }
}
