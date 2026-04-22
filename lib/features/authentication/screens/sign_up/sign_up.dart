import 'package:e_commerce/features/authentication/screens/sign_up/widghts/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/common/widgets/buttons/social_buttons.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/utils/constants/Text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                UText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: USizes.spaceBtwSections),

              //Sign up Form
              Signupform(),

              SizedBox(height: USizes.spaceBtwInputFields),

              /// Sign Up Button
              UElevatedButton(
                onPressed: () {},
                child: Text(UText.createAccount),
              ),

              SizedBox(height: USizes.spaceBtwItems / 2),

              /// Divider
              LoginDivider(title: UText.orSignupWith),

              SizedBox(height: USizes.spaceBtwItems),

              /// Social Buttons
              const LoginLogo(),
            ],
          ),
        ),
      ),
    );
  }
}

