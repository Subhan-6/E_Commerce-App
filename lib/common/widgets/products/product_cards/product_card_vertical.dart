import 'package:e_commerce/common/style/shadow.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class UProductCard extends StatelessWidget {
  const UProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      final dark = UHelperFuntion.isDarkMode(context);
    return Container(
    
      width: 180,
      padding: const EdgeInsets.all(USizes.defaultSpace),
      decoration: BoxDecoration(
        boxShadow: UShadow.verticalProductShadow,
        borderRadius: BorderRadius.circular(USizes.productImageRadius),
    ),
    child: Column(
          children: [
         // Thumbnail, favorite icon , tag ,
         URoundedContainer(
          width: 180,
          padding: const EdgeInsets.all(USizes.sm),
 backgroundColor: dark ? UColors.dark : UColors.light,
       child: Stack(
        children: [
          // thumbnail

        ],
       ),
        )
          ]
    )
    );
  }
}

