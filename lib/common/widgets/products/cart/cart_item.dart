import 'package:e_commerce/common/widgets/Text/brand_title_with_verify.dart';
import 'package:e_commerce/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/images.dart';

class UCartItem extends StatelessWidget {
  const UCartItem({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
           URoundedImages(imageUrl: UImages.product10, width: 60, height: 60,
           padding: const EdgeInsets.all(USizes.sm),
           backgroundColor: dark? UColors.darkerGrey : UColors.light,
           ),
          SizedBox(width: USizes.spaceBtwItems,),
          //Brand,product title,specification
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //name
          UBrand_title_with_verify(title: 'Nike'),
            //product title
            UProductTitleText(title:'Nike Air Max 270', ),
            //specification
            RichText(text: TextSpan(
              children: [
                TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.labelMedium!.apply(color: dark? UColors.white : UColors.black)),
                TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: 'Storage: ', style: Theme.of(context).textTheme.labelMedium!.apply(color: dark? UColors.white : UColors.black)),
                TextSpan(text: '512 ', style: Theme.of(context).textTheme.bodyLarge)
              ]
            ))
          
          ]
        ))
      ]
    );
  }
}