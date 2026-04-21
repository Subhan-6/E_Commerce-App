import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     
      children: [
        Text(UText.header,style: Theme.of(  context).textTheme.headlineMedium,),
           
        // Subtitle
    SizedBox(height:USizes.sm),
    Text(UText.subHeader,style: Theme.of(  context).textTheme.bodySmall,),
         ],
    );
  }
}