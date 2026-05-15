import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: Colors.black),
        ),
        actions: [
          UCircularIcon(
            icon: Iconsax.add,
            onPressed: () =>
                NavigatorController.instance.selectedIndex.value = 0,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UGridLayout(
                itemCount: 10,
                mainAxisExtent: 288,
                itemBuilder: (context, index) => UProductCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
