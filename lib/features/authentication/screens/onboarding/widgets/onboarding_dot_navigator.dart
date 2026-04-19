import 'package:e_commerce/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigator extends StatelessWidget {
  const OnboardingDotNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
     return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight()*2,
      
      left: 0, 
      right: 0,
      child: Center( 
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigatorClick,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotHeight: 6.0,
            
          ),
        ),
      ),
    );
  }
}