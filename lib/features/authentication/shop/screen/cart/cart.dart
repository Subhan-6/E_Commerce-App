import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/Text/brand_title_with_verify.dart';
import 'package:e_commerce/common/widgets/Text/product_price.dart';
import 'package:e_commerce/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/products/cart/cartAddRemoveButton.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/products/cart/cartitems.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

import 'checkout.dart' show CheckoutScreen;

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Scaffold(
        appBar: UAppBar(
          showBackArrow: true,
          title: Text('Cart', style: Theme.of(context).textTheme.titleLarge),
        ),

        //body
        body: Padding(
          padding: UPadding.screenPadding,
          child: UCartItems(dark: dark),
        ),
        //Navigator Button
      bottomNavigationBar: Padding(
        padding: UPadding.screenPadding,
        child: UElevatedButton(
          onPressed: ()=>Get.to(()=>CheckoutScreen()),
          child: Text('Checkout \$8258'),
        ),
      ),
    );
  }
}

