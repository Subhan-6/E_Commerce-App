
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/customs_shapes/clipper/primary_header_container.dart';
import 'package:e_commerce/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_categories.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFuntion.isDarkMode(context);
    return Scaffold(
        // app bar
        body: Stack(
      children: [
        SizedBox(height: USizes.primaryHeaderHeight + 10),
        UPrimaryHeaderContainer(
          height: USizes.primaryHeaderHeight,
          child: Column(
            children: [
              HomeAppBar(dark: dark),
              SizedBox(
                height: USizes.spaceBtwSections,
              ),
              UhomeCategories()
            ],
          ),
        ),
        Search_bar(),
      ],
    ));
  }
}

