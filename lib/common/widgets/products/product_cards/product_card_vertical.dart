import 'package:e_commerce/common/style/shadow.dart';
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
import 'package:iconsax/iconsax.dart';

class UProductCard extends StatelessWidget {
  const UProductCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
          width:   180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: UShadow.verticalProductShadow,
            borderRadius: BorderRadius.circular(USizes.productImageRadius),
          ),
          child: Column(children: [
            // Thumbnail, favorite icon , tag ,
            URoundedContainer(
              height:  180,
              padding: const EdgeInsets.all(USizes.sm),
              backgroundColor: dark ? UColors.dark : UColors.light,
              child: Stack(
                children: [
                  // thumbnail
                  Center(child: URoundedImages(imageUrl: UImages.product15)),
                  // dicount tag
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
              ),
            ),
            SizedBox(height: USizes.spaceBtwItems / 2),
            // Produt Details
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  UProductTitleText(
                    title: 'Shoes of Nike',
                    smallSize: true,
                  ),
                  SizedBox(height: USizes.spaceBtwItems / 2),
                  // brand name
                  UBrand_title_with_verify(title: 'bata'),
                  SizedBox(height: USizes.spaceBtwItems / 2),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: USizes.sm),
                  child: UProductPrice(price: '76'),
                ),
                SizedBox(width: USizes.xs),
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
              ],
            )
          ])),
    );
  }
}

