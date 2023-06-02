import 'package:chapter_17_flutter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  ExampleThreeController exampleThreeController =
      Get.put(ExampleThreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Notifications'),
                Obx(
                  () => Switch(
                      value: exampleThreeController.notification.value,
                      onChanged: (value) {
                        exampleThreeController.setNotification(value);
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
