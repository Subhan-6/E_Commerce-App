import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigator extends StatelessWidget {
  const OnboardingDotNavigator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight()*2,
      
      left: 0, 
      right: 0,
      child: Center( 
        child: SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotHeight: 6.0,
            
          ),
        ),
      ),
    );
  }
}