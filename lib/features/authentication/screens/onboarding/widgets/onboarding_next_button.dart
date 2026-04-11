import 'package:e_commerce/common/widgets/elevated_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: USizes.spaceBtwItems,
      left: 0,
      right: 0,
      child: UElevatedButton(
        child: Text("Next"),
        onPressed: (){},
      ));
  }
}