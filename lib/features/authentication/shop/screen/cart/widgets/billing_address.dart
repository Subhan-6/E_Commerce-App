import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UBillingAdress extends StatelessWidget {
  const UBillingAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      USectionHeading(
        title: "Shipping Address",
        buttonTitle: "Change",
        onPressed: () {},
      ),
      SizedBox(
        height: USizes.spaceBtwItems / 2,
      ),
      Text(
        "Subhan Qamar",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      SizedBox(
        height: USizes.spaceBtwItems / 2,
      ),
      Row(children: [
        Icon(
          Icons.call,
          size: USizes.sm,
          color: UColors.darkGrey,
        ),
        SizedBox(
          width: USizes.spaceBtwItems / 2,
        ),
        Text(
          "+92 300 1234567",
        
        ),
      ]),
      SizedBox(
        height: USizes.spaceBtwItems / 2,
      ),
      Row(children: [
        Icon(
          Icons.location_history,
          size: USizes.sm,
          color: UColors.darkGrey,
        ),
        SizedBox(
          width: USizes.spaceBtwItems / 2,
        ),
        Expanded(
          child: Text(
            "Gulshan-e-Madina",softWrap: true,
          ),
        ),
      ])
    ]);
  }
}
