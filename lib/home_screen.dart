import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.teal ,
        title: const Text('GetX'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("GetX Dialog Alert with GetX"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  middleText: "Are you sure you want to cancel it",
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  confirm: ElevatedButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Get.back();
                      },
                      child: const Text('Ok')),
                  cancel: ElevatedButton(
                      onPressed: () {}, child: const Text('Cancel')),
                  content: const Column(
                    children: [
                      Text('Widgets'),
                      Text('Widgets'),
                      Text('Widgets'),
                      Text('Widgets'),
                      Text('Widgets'),
                    ],
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GetX Bottom Alert"),
              subtitle: const Text("GetX Change Theme"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                   decoration: BoxDecoration(
                     // color: Theme.of(context).colorScheme.inversePrimary,
                     color: Colors.teal,
                     borderRadius: BorderRadius.circular(25),
                   ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                        ),
                        ListTile(
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                        ),
                      ],
                    ),
                  ),
                );
              },

            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'GetX Title',
            "Is's working",
            // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
