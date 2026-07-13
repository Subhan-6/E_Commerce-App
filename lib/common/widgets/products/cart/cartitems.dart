import 'package:e_commerce/common/widgets/Text/product_price.dart';
import 'package:e_commerce/common/widgets/products/cart/cartAddRemoveButton.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UCartItems extends StatelessWidget {
  const UCartItems({
    super.key,
    required this.dark,
    this.addremovebutton = true,
  });

  final bool dark;
  final bool addremovebutton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
              height: USizes.spaceBtwSections,
            ),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // cart item
              UCartItem(dark: dark),
              if(addremovebutton)Row(
                children: [
                 SizedBox(
                    height: USizes.spaceBtwItems,
                  ),
                  //Quantity button
                 UProductQuantityAddRemove(dark: dark),
                  Spacer(),
                  //Price
                  UProductPrice(price: "323"),
                ],
              )
            ],
          );
        });
  }
}
