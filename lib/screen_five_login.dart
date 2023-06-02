import 'package:chapter_17_flutter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFiveLogin extends StatefulWidget {
  const ScreenFiveLogin({super.key});

  @override
  State<ScreenFiveLogin> createState() => _ScreenFiveLoginState();
}

class _ScreenFiveLoginState extends State<ScreenFiveLogin> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Five Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.alternate_email,
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.block,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Obx(
              () => InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child: controller.loading.value
                    ? const SizedBox(height: 20,width: 20,
                      child: CircularProgressIndicator(
                          strokeWidth: 1.5,
                        ),
                    )
                    : Container(
                        height: 45,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: const Center(
                          child: Text('Login'),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
