import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class UOrderList extends StatelessWidget {
  const UOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return ListView.separated(
      itemCount: 10,
separatorBuilder: (context, index) => SizedBox(height: USizes.spaceBtwItems),
itemBuilder: (context, index){
return Column(
      children: [
        // Order COntainer
        URoundedContainer(
          showBorder: true,
          backgroundColor: dark ? UColors.dark : UColors.light,
          padding: EdgeInsets.all(USizes.md),
          child: Column(children: [
            // Order Status
            Row(children: [
                // Order Icon
              Icon(Iconsax.ship4),
              SizedBox(width: USizes.spaceBtwItems / 2),
              Expanded(
                // Text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Processing ",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: UColors.primary),
                    ),
                    Text(
                      "1 Jan 2026",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              // Arrow Icon
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.arrow_right_34,
                    size: USizes.iconSm,
                  )),
            ]),
            SizedBox(height: USizes.spaceBtwItems),
            // Order Details
            Row(children: [
              Icon(Iconsax.tag),
              SizedBox(width: USizes.spaceBtwItems / 2),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "GYS324",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              Row(children: [
                Icon(
                  Iconsax.calendar,
                ),
                SizedBox(width: USizes.spaceBtwItems / 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "6 jan 2026",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ]),
            ]),
          ]),
        )
      ],
    );
}
);
  }
}   