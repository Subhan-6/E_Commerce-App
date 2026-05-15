import 'package:e_commerce/common/widgets/image/circular_images.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:flutter/material.dart';

class Uprofilelogo extends StatelessWidget {
  const Uprofilelogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UCircularImage(
      image: UImages.profileLogo,
      height: 120,
      width: 120,
      borderWidth: 5.0,
      padding: 0,
    );
  }
}
