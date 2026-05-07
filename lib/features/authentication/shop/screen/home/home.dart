import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/style/shadow.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/customs_shapes/clipper/primary_header_container.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/features/authentication/shop/controllers/home_controller/home_controller.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_categories.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_navigator_dot.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/upromo_banners.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
final controller = Get.put(HomeController());
    bool dark = UHelperFuntion.isDarkMode(context);
    return Scaffold(
        // app bar
        body: Column(
      children: [
        // upper part
        Stack(
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
        ),
        // Lower part
        Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          // banner slider
          child: Column(
            children: [
              UpromoBanners(banners: [UImages.banner1,UImages.banner3,UImages.banner4,UImages.banner5,UImages.banner6],),
              SizedBox(height: USizes.spaceBtwItems),
              USectionHeading(title: 'Popular Products' , onPressed: (){}, ),
              SizedBox(height: USizes.spaceBtwItems),
              UProductCard(),
            ],
          ),
        )
      ],
    ));
  }
}

