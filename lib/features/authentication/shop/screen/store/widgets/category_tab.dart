import 'package:e_commerce/common/widgets/Brand_Card/show_case.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
          child: Column(
            children: [
              //Brands showcase1
              UBrandShowcase(
                images: [
                  UImages.product1,
                  UImages.product2,
                  UImages.product10,
                  UImages.product14,
                ],
                dark: dark,
              ),
              //Brands showcase1
              UBrandShowcase(
                images: [
                  UImages.product1,
                  UImages.product2,
                  UImages.product10,
                  UImages.product14,
                ],
                dark: dark,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              // You might heading
              USectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              // grid layout
              UGridLayout(
                itemCount: 4,
                mainAxisCount: 288,
                itemBuilder: (context, index) {
                  return UProductCard();
                },
              ),
                SizedBox(height: USizes.spaceBtwSections,)
            ],
          ),
        )
      ],
    );
  }
}
