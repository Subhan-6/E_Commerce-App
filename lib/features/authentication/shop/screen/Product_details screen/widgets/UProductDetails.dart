import 'package:e_commerce/common/widgets/Text/brand_title_with_verify.dart';
import 'package:e_commerce/common/widgets/Text/product_price.dart';
import 'package:e_commerce/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/image/circular_images.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UProductDetails extends StatelessWidget {
  const UProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            URoundedContainer(
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
            SizedBox(width: USizes.spaceBtwItems),
            // price
            Text(
              '\$399',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(width: USizes.spaceBtwItems),
            UProductPrice(price: '250'),
            Spacer(),
            // share button
            IconButton(onPressed: () {}, icon: Icon(Icons.share))
          ],
        ),
        // product title
        SizedBox(height: USizes.spaceBtwItems / 1.5),
        UProductTitleText(
          title: 'Nike Air Max ',
        ),
        SizedBox(height: USizes.spaceBtwItems / 1.5),
        //  product status
        Row(
          children: [
            UProductTitleText(
              title: 'Status',smallSize: true,
            ),
            SizedBox(width: USizes.spaceBtwItems / 1.5),
            Text('In Stock',
                style: Theme.of(context).textTheme.titleLarge),
        
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 1.5),
        // brand image & name with verify button
        Row(
          children: [
            UCircularImage(image: UImages.bata,height: 32.0,width: 32.0,padding: 0,),
              SizedBox(width: USizes.spaceBtwItems/1.5),
              UBrand_title_with_verify(title: 'Bata')
          ],
        ),
      ],
    );
  }
}

