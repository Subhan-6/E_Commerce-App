import 'package:e_commerce/common/widgets/Text/brands_tiltle_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UBrand_title_with_verify extends StatelessWidget {
  const UBrand_title_with_verify({
    super.key,
    this.maxLines =1,
    required this.title,
    this.color,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });
  final int maxLines;
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      Flexible(
        child: UBrand_Title_Text(
          title: title,
          textAlign: textAlign,
          maxLines: maxLines,
          color: color,
          brandTextSize: brandTextSize,
        ),
      ),
    SizedBox(width: USizes.xs),
      Icon(
        Iconsax.verify5,
        color: UColors.primary,
        size: USizes.iconXs,
      ),
    ]);
  }
}
