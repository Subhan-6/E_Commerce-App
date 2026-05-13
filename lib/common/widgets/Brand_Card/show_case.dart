import 'package:e_commerce/common/widgets/Brand_Card/brand_card.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helpers_function.dart';

class UBrandShowcase extends StatelessWidget {
  const UBrandShowcase({
    super.key, required bool dark, required this.images,
    
  });

  
final List<String> images;
  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: UColors.darkGrey,
      padding: EdgeInsets.all(USizes.md),
      margin: EdgeInsets.all(USizes.md),
      child: Column(
        children: [
          UBrandCard(showBorder: false),
          //image
        Row(
          children: images.map((image) => buildBrandImage (dark,image)).toList()
         
        ),
    
        ],
      ),
    );
  }
}



  @override
  Widget buildBrandImage(bool dark,String image) {
    return Expanded(
      child: URoundedContainer(
          height: 100,
          margin: EdgeInsets.only(right: USizes.sm),
          padding: EdgeInsets.all(USizes.md),
          backgroundColor: dark? UColors.dark : UColors.light,
          child: Image(image: AssetImage(image),fit: BoxFit.contain, ),
                ),
    );
  }



