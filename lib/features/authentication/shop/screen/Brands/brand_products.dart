
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/Brand_Card/brand_card.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/common/widgets/products/sortable_product.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UBrandsProduct extends StatelessWidget {
  const UBrandsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(title: Text("Brands"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              // brand card
              UBrandCard(),
              SizedBox(height: USizes.spaceBtwSections,),
              // products
              USortableProducts(),
              
          
            ],
          ),
        ),
      ),

    );
  }
}