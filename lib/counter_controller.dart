import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

// Example 1
class CounterController extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
    print(counter.value);
  }
}

// Example 2
class ExampleTwoController extends GetxController {
  RxDouble opacity = .4.obs;

  setOpacity(double value) {
    opacity.value = value;
  }
}

// Example 3
class ExampleThreeController extends GetxController {
  RxBool notification = false.obs;

  setNotification(bool value) {
    notification.value = value;
    print(value);
  }
}

// Example 4
class FavouriteController extends GetxController {
  RxList<String> fruitsList = [
    'Orange',
    'Apple',
    'Mango',
    'Banana',
    'Apricot',
    'Cherry',
    'Coconut',
    'Cantaloupe',
    'Cranberry',
    'Fig'
  ].obs;
  RxList tempFruitsList = [].obs;

  addToFavourite(String value) {
    tempFruitsList.add(value);
    print(value);
  }

  removeToFavourite(String value) {
    tempFruitsList.remove(value);
    print(value);
  }
}

// Example 5 Image picker
class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}

// Example 6 login
class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text
          });

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login Successfully', data['token']);
      } else {
        loading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }
}
