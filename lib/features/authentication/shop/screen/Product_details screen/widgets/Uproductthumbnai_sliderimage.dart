import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UProductThumbnailSliderimage extends StatelessWidget {
  const UProductThumbnailSliderimage({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
    final dark= UHelperFuntion.isDarkMode(context);
    return Container(
      color: dark ? UColors.darkGrey : UColors.light,
      child: Stack(children: [
        // Thumbnail & image
        SizedBox(
            height: 400,
            child: Padding(
              padding:
                  const EdgeInsets.all(USizes.productImageRadius * 2),
              child: Center(
                  child: Image(image: AssetImage(UImages.product10))),
            )),
        // Scrollable list of images
        Positioned(
          left: USizes.defaultSpace,
          right: 0,
          bottom: 30,
          child: SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: USizes.spaceBtwItems,
              ),
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => URoundedImages(
                padding: const EdgeInsets.all(USizes.sm),
                backgroundColor: dark ? UColors.dark : UColors.light,
                width: 80,
                border: Border.all(
                  color: UColors.primary,
                ),
                imageUrl: UImages.product10,
              ),
            ),
          ),
        ),
        // Back button & Favorite button
        UAppBar(
          showBackArrow: true,
          actions: [
            UCircularIcon(icon: Iconsax.heart5, color: Colors.red)
          ],
        ),
      ]),
    );
  }
}
