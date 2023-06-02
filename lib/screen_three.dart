import 'package:chapter_17_flutter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  FavouriteController controller = Get.put(FavouriteController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three '),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.fruitsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (controller.tempFruitsList
                    .contains(controller.fruitsList[index].toString())) {
                  controller.removeToFavourite(
                      controller.fruitsList[index].toString());
                } else {
                  controller
                      .addToFavourite(controller.fruitsList[index].toString());
                }
              },
              title: Text(controller.fruitsList[index].toString()),
              trailing: Obx(
                () => Icon(
                  Icons.favorite,
                  color: controller.tempFruitsList
                          .contains(controller.fruitsList[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
