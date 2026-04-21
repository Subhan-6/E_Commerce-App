import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/social_buttons.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //title
              LoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),
              // form
              LoginForm(),
              SizedBox(height: USizes.spaceBtwItems),
              // divider
              LoginDivider(title: UText.orSignInWith),
              SizedBox(height: USizes.spaceBtwSections),
              // logo
              LoginLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
