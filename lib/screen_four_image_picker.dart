import 'dart:io';

import 'package:chapter_17_flutter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFourImagePicker extends StatefulWidget {
  const ScreenFourImagePicker({super.key});

  @override
  State<ScreenFourImagePicker> createState() => _ScreenFourImagePickerState();
}

class _ScreenFourImagePickerState extends State<ScreenFourImagePicker> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Four Image Picker'),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(File(controller.imagePath.toString()))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                controller.getImage();
              },
              child: const Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
