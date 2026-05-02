import 'package:e_commerce/common/widgets/image_text/vertical_image_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';

class UhomeCategories extends StatelessWidget {
  const UhomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // popular categories
          Text(
            UText.popularCategories,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: UColors.white),
          ),
          SizedBox(height: USizes.spaceBtwItems/2 ),
          // categories list
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: USizes.spaceBtwItems,
              ),
              scrollDirection: Axis.horizontal,
              
                itemCount: 10,
                itemBuilder: (context, index) {
                  return UVerticalImageText(
                    title: UText.sport,
                    image: UImages.sports,
                    backgroundColor: UColors.white,
                    textcolor: UColors.white,
                  );
                }),
          )
        ],
      ),
    );
  }
}

