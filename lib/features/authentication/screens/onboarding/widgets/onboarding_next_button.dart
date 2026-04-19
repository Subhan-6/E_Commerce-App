import 'package:e_commerce/common/widgets/elevated_button.dart';
import 'package:e_commerce/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   final controller = OnBoardingController.instance;
    return Positioned(
      bottom: USizes.spaceBtwItems,
      left: 0,
      right: 0,
      child: UElevatedButton(
        child: Obx(()=> Text(controller.currentPage.value == 2 ? 'Get Started' : 'Next')),
        onPressed: controller.nextPage,
      ));
  }
}