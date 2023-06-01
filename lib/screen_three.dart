import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * .1,
            // height: MediaQuery.of(context).size.height * .3,
            color: Colors.red,
            child: const Center(
              child: Text('Center'),
            ),
          ),
          ListTile(
            title: Text('message'.tr),
          ),
        ],
      ),
    );
  }
}
