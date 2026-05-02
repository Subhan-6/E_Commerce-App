import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  bool dark = UHelperFuntion.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: USizes.md),
        height: 60,
        decoration: BoxDecoration(
            color: dark? UColors.black :UColors.light,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                spreadRadius: 4.0,
                blurRadius: 4.0,
              ),
            ]),
        child: Row(
          children: [
            Icon(
              Iconsax.search_normal,
              color: UColors.darkGrey,
            ),
            SizedBox(width: 10),
            Text(
              UText.searchinStore,
            style: Theme.of(context).textTheme.titleSmall, 
            ),
          ],
        ),
      ),
    );
  }
}
