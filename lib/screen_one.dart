import 'package:chapter_17_flutter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    print('Build :1');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.purple.withOpacity(exampleTwoController.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
                value: exampleTwoController.opacity.value,
                onChanged: (value) {
                 exampleTwoController.setOpacity(value);

                }),
          ),
        ],
      ),
    );
  }
}
