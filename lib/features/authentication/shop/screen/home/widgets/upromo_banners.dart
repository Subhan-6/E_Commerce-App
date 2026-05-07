import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/authentication/shop/controllers/home_controller/home_controller.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/home_navigator_dot.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/image/rounded_image.dart';

class UpromoBanners extends StatelessWidget {
  const UpromoBanners({
    super.key, required this.banners,
  });
final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((banner) =>URoundedImages(imageUrl: banner)).toList(),
            options: CarouselOptions(viewportFraction: 1,onPageChanged: (index, reason) => controller.onPageChanged(index),),
            carouselController: controller.CarouselController,
            ),
             
        SizedBox(height: USizes.spaceBtwItems),
        homepageDotNavigator(),
      ],
    );
  }
}
