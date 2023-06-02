import 'package:get/get.dart';

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
