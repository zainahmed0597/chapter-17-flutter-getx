import 'package:get/get.dart';

// Example 1
class CounterController extends GetxController {
  RxInt counter = 1.obs;
  incrementCounter (){
    counter.value++;
    print(counter.value);
  }
}

// Example 2
class ExampleTwoController extends GetxController{
  RxDouble opacity = .4.obs;

  setOpacity(double value){
    opacity.value = value;
  }
}