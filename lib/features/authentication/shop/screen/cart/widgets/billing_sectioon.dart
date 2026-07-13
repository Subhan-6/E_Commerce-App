import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UBilligPaymentSection extends StatelessWidget {
  const UBilligPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return 
    Column(
      children: [
        //Payment Method 
      USectionHeading(
        title: "Payment",
        buttonTitle: "Change",
        onPressed: () {},
      ),
      SizedBox(height: USizes.spaceBtwItems / 2),
      Row(children: [
        // Payment logo
        URoundedContainer(
            width: 60,
            height: 35,
            backgroundColor: dark ? UColors.dark : UColors.light,
            padding: EdgeInsets.all(USizes.sm),
            child: Image(
              image: AssetImage(UImages.applepay),
              fit: BoxFit.cover,
            )),
            SizedBox(width: USizes.spaceBtwItems / 2),
            // Payment logo Text
Text("Apple Pay", style: Theme.of(context).textTheme.bodyLarge),
       


      ])
    ]);
  }
}
