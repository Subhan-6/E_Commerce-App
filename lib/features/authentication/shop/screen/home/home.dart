import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/customs_shapes/clipper/primary_header_container.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_categories.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              CarouselSlider(
                  items: [
                    URoundedImages(imageUrl: UImages.banner1,),
                    URoundedImages(imageUrl: UImages.banner3),
                    URoundedImages(imageUrl: UImages.banner4),
                    URoundedImages(imageUrl: UImages.banner5),
                    URoundedImages(imageUrl: UImages.banner6),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 1,
                  )),
                  SizedBox(height: USizes.spaceBtwItems),
homepageDotNavigator(),

            ],
          ),
        )
      ],
    ));
  }
}
class homepageDotNavigator extends StatelessWidget {
  const homepageDotNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     return 
         SmoothPageIndicator(
          count: 3,
          effect:  ExpandingDotsEffect(
            dotHeight: 6.0,
          ),
          controller: PageController(),
        );
     
  }
}
