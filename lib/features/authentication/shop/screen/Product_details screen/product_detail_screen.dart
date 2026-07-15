import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/features/authentication/shop/screen/Product_details%20screen/widgets/UProductDetails.dart';
import 'package:e_commerce/features/authentication/shop/screen/Product_details%20screen/widgets/Uproductthumbnai_sliderimage.dart';
import 'package:e_commerce/features/authentication/shop/screen/Product_details%20screen/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/authentication/shop/screen/Product_details%20screen/widgets/product_attributes.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // thumbnail image & slider
            UProductThumbnailSliderimage(),
            // -----[Product detils]-----
            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  // tag & price & share button
                  UProductDetails(),
                  // product attributes
                  UProductAttributes(),
                  SizedBox(height: USizes.spaceBtwSections),
                  // Checkout button
                  UElevatedButton(onPressed: () {}, child: Text('Check Out')),
                  SizedBox(height: USizes.spaceBtwSections),
                  // Descrition
                  USectionHeading(
                      title: 'Discreption', showActionButton: false),
                  SizedBox(height: USizes.spaceBtwItems / 1.5),
                  ReadMoreText(
                    'This is a product description of BATA brand shoes. There are more things that can be added but I’m,This is a product description of BATA brand shoes. There are more things that can be added but I’m... show more',
                    trimLines: 2,
                    trimCollapsedText: 'ShowMore',
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
              

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:  BottomAddToCart(),

    );
  }
}
