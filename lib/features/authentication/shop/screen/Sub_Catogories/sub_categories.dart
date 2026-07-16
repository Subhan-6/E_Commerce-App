import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/Text/brand_title_with_verify.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UsubCatogories extends StatelessWidget {
  const UsubCatogories({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Scaffold(
      appBar: UAppBar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(children: [
            USectionHeading(title: "Sports Shoe", onPressed: () {}),
            SizedBox(height: USizes.spaceBtwItems / 2),
            // Left side
            SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: USizes.spaceBtwItems,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return UProduct_card_horizontal(dark: dark);
                  },
                ))
          ]),
        ),
      ),
    );
  }
}
