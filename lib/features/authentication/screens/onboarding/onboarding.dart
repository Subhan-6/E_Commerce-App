
import 'package:e_commerce/common/widgets/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigator.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:e_commerce/utils/constants/Text.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack( 
          children: [
           
            PageView(
              controller: controller,
              children: [
                OnboardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UText.onboarding1Title,
                  subtitle: UText.onboarding1Subtitle,
                ),
                OnboardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UText.onboarding2Title,
                  subtitle: UText.onboarding2Subtitle,
                ),
                OnboardingPage(
                  animation: UImages.onboarding3Animation,
                  title: UText.onboarding3Title,
                  subtitle: UText.onboarding3Subtitle,
                ),
              ],
            ),
         //Dot NAvigator
        OnboardingDotNavigator(controller: controller),
        //Next Button Navigator
        OnboardingNextButton(),
        //Skip Button Navigator
        OnboardingSkipButton(),
        
          ],
        ),
      ),
    );
  }
}




