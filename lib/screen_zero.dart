import 'package:chapter_17_flutter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenZero extends StatefulWidget {
  const ScreenZero({Key? key}) : super(key: key);

  @override
  State<ScreenZero> createState() => _ScreenZeroState();
}

class _ScreenZeroState extends State<ScreenZero> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.onPrimary,
        // backgroundColor: Colors.blue ,
        title: const Text('GetX'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() {
              return Text(
                controller.counter.toString(),
                style: const TextStyle(fontSize: 60),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
