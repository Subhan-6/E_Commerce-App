import 'package:e_commerce/common/widgets/Text/brand_title_with_verify.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({
    super.key, this.showBorder=true,
  });
final showBorder;
  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      height: USizes.brandCardHeight,
      width: USizes.brandCardWidth,
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(USizes.sm),
      child: Row(
        children: [
          // brand image
          Flexible(child: URoundedImages(imageUrl: UImages.bata,)),
          SizedBox(width: USizes.spaceBtwItems/2),
          // brad name & vrify icon
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                UBrand_title_with_verify(title: 'Bata',brandTextSize: TextSizes.large),
                Text('172 Products',style: Theme.of(context).textTheme.labelSmall,overflow: TextOverflow.ellipsis,)
              ],
            ),
          )
    
      ],),
    );
  }
}
