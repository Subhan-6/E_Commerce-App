import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
        
     children: [
       // Facebook
    buildButton(UImages.facebookIcon,(){}),
      SizedBox(width: USizes.spaceBtwItems/2),
      // Google
    buildButton(UImages.googleIcon,(){}),
  
   
     ],
    );
  }

  Container buildButton(String image, VoidCallback onPressed ) {
    return Container(
    decoration: BoxDecoration(
      border: Border.all(color: UColors.grey),
      borderRadius: BorderRadius.circular(100),
    ),
    child: IconButton(onPressed: onPressed, icon: Image.asset(image,height:USizes.iconLg,width: USizes.iconLg,)),
  );
  }
}