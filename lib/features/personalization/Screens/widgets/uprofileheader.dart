import 'package:e_commerce/common/widgets/customs_shapes/clipper/primary_header_container.dart';
import 'package:e_commerce/common/widgets/image/profilelogo.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UProfileprimaryheader extends StatelessWidget {
  const UProfileprimaryheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: USizes.profilerimaryHeaderHeight + 60),
        UPrimaryHeaderContainer(
            child: Container(), height: USizes.profilerimaryHeaderHeight),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Uprofilelogo(),

          ),
        )
      ],
    );
  }
}

