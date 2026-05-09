import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
// variables
  final CarouselController = CarouselSliderController();
  RxInt currentindex = 0.obs;
  void onPageChanged(int index) {
    currentindex.value = index;
  }
}
