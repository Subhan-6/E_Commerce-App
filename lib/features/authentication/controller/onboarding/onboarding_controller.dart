import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  
  final pageController = PageController();
  RxInt currentPage = 0.obs;
  
  void updatePageIndicator(index) {
    currentPage.value=index;
  }
  void dotNavigatorClick(index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }
  void nextPage() {
    if (currentPage.value == 2){
      return ;
    }
    currentPage.value++;
    pageController.jumpToPage(currentPage.value);
  }
  void skipPage() {
    currentPage.value = 2;
    pageController.jumpToPage(currentPage.value);
  }
}
