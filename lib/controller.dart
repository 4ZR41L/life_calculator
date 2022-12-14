import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt userHeight = 170.obs;
  RxInt userWeight = 60.obs;
  RxInt workoutCount = 0.obs;
  RxInt smokeCount = 0.obs;
  RxString gender = ''.obs;

  void incrementUserData(dataType) {
    dataType == 'height' ? userHeight++ : userWeight++;
  }

  void decrementUserData(dataType) {
    dataType == 'height' ? userHeight-- : userWeight--;
  }

  double calculateUserLife() {
    double result;

    result = 70 + (userHeight.value / userWeight.value);
    result = result + workoutCount.value - smokeCount.value;
    result = gender.value == 'female' ? result + 5 : result + 2;

    return result;
  }
}
