import 'package:e_commerce/common/widgets/customs_shapes/clipper/primary_header_container.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/features/authentication/shop/controllers/home_controller/home_controller.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_categories.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/upromo_banners.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
final controller = Get.put(HomeController());
    bool dark = UHelperFuntion.isDarkMode(context);
    return Scaffold(
        // app bar
        body: SingleChildScrollView(
          child: Column(
                children: [
          // upper part
          Stack(
            children: [
              SizedBox(height: USizes.homePrimaryHeaderHeight + 10),
              UPrimaryHeaderContainer(
                height: USizes.homePrimaryHeaderHeight,
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
              Searchbar(),
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
                // section heading
                USectionHeading(title: 'Popular Products' , onPressed: (){}, ),
                SizedBox(height: USizes.spaceBtwItems/2),
                // product grid & product card
                UGridLayout(
                  mainAxisCount: 288,
                  itemCount: 6,
                  itemBuilder: (context,index){
                    return UProductCard();
                  }
                )
              ],
            ),
          )
                ],
              ),
        ));
  }
}

