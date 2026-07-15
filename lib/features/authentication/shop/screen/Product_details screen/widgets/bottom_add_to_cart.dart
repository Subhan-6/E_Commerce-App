import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace, vertical: USizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark ? UColors.darkGrey : UColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(USizes.cardRadiusLg),
          topRight: Radius.circular(USizes.cardRadiusLg),
        )
      ),
// COunter 
      child: Row(
        children: [
          UCircularIcon(
            icon: Iconsax.minus,
            backgroundColor: UColors.darkGrey,
            height: 40,
            width: 40,
            color: UColors.white,
          ),
          SizedBox(width: USizes.spaceBtwItems),
          Text('2',style: Theme.of(context).textTheme.titleLarge),
          SizedBox(width: USizes.spaceBtwItems),

          UCircularIcon(
            icon: Iconsax.add,
            backgroundColor: UColors.black,
            height: 40,
            width: 40,
            color: UColors.white,

          ),
          Spacer(),
          ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
            padding:EdgeInsets.all(USizes.md),
            backgroundColor: UColors.black,
            side: BorderSide(color: UColors.black),
          ),
          child: Row(children: [
            Icon(Iconsax.shopping_cart),
             SizedBox(width: USizes.spaceBtwItems/2),
             Text('Add to Cart'),
        ]),
      ),
      ]),
          );
  }
}
