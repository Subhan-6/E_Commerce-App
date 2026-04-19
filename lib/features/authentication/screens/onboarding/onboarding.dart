
import 'package:e_commerce/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigator.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final controller = Get.put(OnBoardingController());
   
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack( 
          children: [
           
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                const OnboardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UText.onboarding1Title,
                  subtitle: UText.onboarding1Subtitle,
                ),
                const OnboardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UText.onboarding2Title,
                  subtitle: UText.onboarding2Subtitle,
                ),
                const OnboardingPage(
                  animation: UImages.onboarding3Animation,
                  title: UText.onboarding3Title,
                  subtitle: UText.onboarding3Subtitle,
                ),
              ],
            ),
         //Dot NAvigator
        const OnboardingDotNavigator(),
        //Next Button Navigator
        const OnboardingNextButton(),
        //Skip Button Navigator
        const OnboardingSkipButton(),
        
          ],
        ),
      ),
    );
  }
}
