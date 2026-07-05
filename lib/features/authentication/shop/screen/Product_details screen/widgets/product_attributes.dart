import 'package:e_commerce/common/widgets/Text/product_price.dart';
import 'package:e_commerce/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce/common/widgets/chip/choice_chip.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Column(children: [
      // rounded countaniaer with price and stock
      URoundedContainer(
        padding: const EdgeInsets.all(USizes.md),
        backgroundColor: dark ? UColors.darkGrey : UColors.grey,
        child: Column(children: [
          Row(
            children: [
              // Variation heading
              USectionHeading(
                title: 'Variation ',
                showActionButton: false,
              ),
              SizedBox(width: USizes.spaceBtwItems),
              Column(
                children: [
                  Row(
                    children: [
                      // price row
                      UProductTitleText(
                        title: 'Price : ',
                        smallSize: true,
                      ),
                      Text(
                        '299',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: USizes.spaceBtwItems),
                      UProductPrice(price: '200'),
                    ],
                  ),
                  // in stock row
                  Row(
                    children: [
                      UProductTitleText(
                        title: 'Stock : ',
                        smallSize: true,
                      ),
                      Text(
                        'In Stock',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // attributes description
          UProductTitleText(
            title: 'This is a product of iPhone 11 with 512 GB',
            smallSize: true,
            maxlines: 3,
          ),
        ]),
      ),
    // Colors
     SizedBox(height: USizes.spaceBtwItems),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          USectionHeading(
            title: 'Colors',
            showActionButton: false,
          ),
      SizedBox(height: USizes.spaceBtwItems / 1.5),
      Wrap(
        spacing: USizes.sm,
        children: [
          UChoiceChip(
            text: 'Red',
            selected: false,
            onSelected: (value) {},
          ),
          UChoiceChip(
            text: 'Yellow',
            selected: false,
            onSelected: (value) {},
          ),
          UChoiceChip(
            text: 'Blue',
            selected: true,
            onSelected: (value) {},
          ),],
      ),
        ],
      ),
     
    
    
    
    
    
    
    
                // Sizes
    
      SizedBox(height: USizes.spaceBtwItems),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          USectionHeading(
            title: 'Sizes',
            showActionButton: false,
          ),
      SizedBox(height: USizes.spaceBtwItems / 1.5),
      Wrap(
        spacing: USizes.sm,
        children: [
          UChoiceChip(
            text: 'L',
            selected: false,
            onSelected: (value) {},
          ),
          UChoiceChip(
            text: 'M',
            selected: false,
            onSelected: (value) {},
          ),
          UChoiceChip(
            text: 'S',
            selected: true,
            onSelected: (value) {},
          ),],
      ),
        ],
      ),
     
    
    
    
    
    
    
    
    
    ]);
  }
}
