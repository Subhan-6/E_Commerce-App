import 'package:e_commerce/features/authentication/shop/screen/All-Products/all_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart' show GetNavigation;

class USectionHeading extends StatelessWidget {
  const USectionHeading({
    super.key, required this.title,  this.buttonTitle = 'View All', this.onPressed,  this.showActionButton = true,
  });
  final bool showActionButton ;
final String title,buttonTitle;
final VoidCallback ?onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(title , style: Theme.of(context).textTheme.headlineSmall,maxLines: 1 ,overflow: TextOverflow.ellipsis,),
      if (showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle)),
    ],);
  }
}

