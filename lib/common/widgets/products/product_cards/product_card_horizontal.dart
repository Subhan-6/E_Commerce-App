import 'package:e_commerce/common/widgets/Text/brand_title_with_verify.dart';
import 'package:e_commerce/common/widgets/Text/product_price.dart';
import 'package:e_commerce/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class UProduct_card_horizontal extends StatelessWidget {
  const UProduct_card_horizontal({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(USizes.productImageRadius),
        color: dark ? UColors.dark : UColors.light,
      ),
      child: Row(
          children: [
            URoundedContainer(
              height: 116,
              backgroundColor: dark? UColors.darkerGrey : UColors.white,
              padding: EdgeInsets.all(USizes.sm),
              child: Stack(
                children: [
                  // Product Image
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: URoundedImages(imageUrl: UImages.product10)),
                    // discount Tag & favorite icon
                    Positioned(
          top: 12.0,
          child: URoundedContainer(
            radius: USizes.sm,
            padding: const EdgeInsets.symmetric(
                horizontal: USizes.sm, vertical: USizes.xs),
            backgroundColor: UColors.yellow.withValues(alpha: 0.8),
            child: Text(
              '20%',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: UColors.black),
            ),
          ),
        ),
        Positioned(
            right: 0,
            top: 0,
            child: UCircularIcon(icon: Icons.favorite))
                ],
              )
            ),
             // Right side
SizedBox(
  width: 172.0,
  child: Padding(
    padding: const EdgeInsets.only(left:USizes.sm,top: USizes.sm),
    child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            UProductTitleText(title: "Air Force 221"),
        SizedBox(height: USizes.spaceBtwItems/2),
          UBrand_title_with_verify(title: "Nike"),
          ]
        ),
Spacer(),
        Row(
          children: [
            UProductPrice(price: "63"),
            Spacer(),
              // add button
              Container(
                    width: USizes.iconLg * 1.2,
                    height: USizes.iconLg * 1.2,
                    decoration: BoxDecoration(
                        color: UColors.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(USizes.cardRadiusMd),
                          bottomRight: Radius.circular(USizes.productImageRadius),
                        )),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.add,
                          color: UColors.white,
                          size: USizes.iconMd,
                        )),
                  )
          ])
      ],
    ),
  ),
)

          ]
        )
        
    
    
    );
  }
}