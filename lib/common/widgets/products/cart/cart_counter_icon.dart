import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UCartCounter extends StatelessWidget {
  const UCartCounter({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.shopping_bag),
          color: dark ? UColors.black : UColors.white,
        ),
        Positioned(
    right: 6,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: dark ? UColors.white : UColors.black),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelSmall!.apply(
                    fontSizeFactor: 0.8,
                    color: dark ? UColors.black : UColors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
