import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UProductQuantityAddRemove extends StatelessWidget {
  const UProductQuantityAddRemove({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 70,),
       Row(
        children: [
     UCircularIcon(
          icon: Iconsax.minus,
           height: 32,
          width: 32,
          size: USizes.iconSm,
          onPressed: (){},
          color: dark? UColors.white : UColors.black,
          backgroundColor: dark? UColors.darkerGrey : UColors.light,
        ),
        SizedBox(width: USizes.spaceBtwItems,),
        Text('1', style: Theme.of(context).textTheme.titleLarge,),
        SizedBox(width: USizes.spaceBtwItems,),
        UCircularIcon(
          icon: Iconsax.add,
          size: USizes.iconSm,
          height: 32,
          width: 32,
          onPressed: (){},
          color:  UColors.white,
          backgroundColor: UColors.primary,
        ),
        ]
       ),
       ]
    );
  }
}

