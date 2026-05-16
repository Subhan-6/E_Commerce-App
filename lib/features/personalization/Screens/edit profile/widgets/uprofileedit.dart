import 'package:e_commerce/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce/common/widgets/image/profilelogo.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UProfileEditwidget extends StatelessWidget {
  const UProfileEditwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: Uprofilelogo()),
        Positioned
        
        (top: 0, right: 0,left: 0,bottom: 0,
          child: Center(child: UCircularIcon(icon: Iconsax.edit, onPressed: () {},)))
      ],
    );
  }
}