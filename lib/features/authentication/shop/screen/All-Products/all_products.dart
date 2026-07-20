import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/products/sortable_product.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UAllProductScreen extends StatelessWidget {
  const UAllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // app bar
        appBar: UAppBar(
          title: Text("All Products"),
          showBackArrow: true,
        ),
           // body
        body: SingleChildScrollView(
          child: Padding(
            padding: UPadding.screenPadding,
            child: USortableProducts(),
          ),
        ));
  }
}

