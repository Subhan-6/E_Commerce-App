
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/Brand_Card/brand_card.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/features/authentication/shop/screen/Brands/brand_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class UAllBrandsScreen extends StatelessWidget {
  const UAllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(title: Text("All Brands"),showBackArrow: true),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              USectionHeading(title:"Brands" ),
              SizedBox(height: USizes.spaceBtwSections),
              UGridLayout(itemCount: 10,itemBuilder: (context, index) =>UBrandCard(onTap: ()=>Get.to(()=>UBrandsProduct()),), mainAxisExtent: 80,),
            ],
          ),
        ),
      ),    );
  }
}