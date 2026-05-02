import 'package:e_commerce/features/authentication/screens/sign_up/widghts/privacy_policy_check.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Signupform extends StatelessWidget {
  const Signupform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: USizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UText.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
      
    
    SizedBox(height: USizes.spaceBtwInputFields),
    
    /// Email
    TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Iconsax.direct_right),
        labelText: UText.email,
      ),
    ),
    
    SizedBox(height: USizes.spaceBtwInputFields),
    
    /// Phone
    TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Iconsax.call),
        labelText: UText.phoneno,
      ),
    ),
    
    SizedBox(height: USizes.spaceBtwInputFields),
    
    /// Password
    TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Iconsax.password_check),
        labelText: UText.password,
      ),
    ),
    
    SizedBox(height: USizes.spaceBtwInputFields / 2),
    
    /// Terms & Conditions
    privacy_policy_checkbox(),
    ],
    );
  }
}


