import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
    
    required this.title,
  
  });

 
  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Row(
     children: [
       Expanded(child: Divider(indent: 60, endIndent:5, thickness: 0.5,color: dark ? UColors.darkGrey : UColors.grey)),
       Text(title, style: Theme.of(context).textTheme.labelMedium,),
       Expanded(child: Divider(indent: 5, endIndent:60,thickness: 0.5, color : dark ? UColors.darkGrey : UColors.grey)),
     ],
    );
  }
}
