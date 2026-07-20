import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'product_cards/product_card_vertical.dart';
import '../../../utils/constants/sizes.dart';

class USortableProducts extends StatelessWidget {
  const USortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // filter
        DropdownButtonFormField(
          decoration: InputDecoration(prefix: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name', 'lowerPrice', 'highPrice', 'rating']
              .map((filter) {
            return DropdownMenuItem(
              child: Text(filter),
              value: filter,
            );
          }).toList(),
        ),
        SizedBox(height: USizes.spaceBtwSections),
        // product grid vertical
        UGridLayout(
          itemCount: 10,
          itemBuilder: (context, index) => UProductCard(),
          mainAxisExtent: 288,
        )
      ],
    );
  }
}
