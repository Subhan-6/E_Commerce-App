import 'package:e_commerce/common/widgets/customs_shapes/circular_container.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class UVerticalImageText extends StatelessWidget {
  const UVerticalImageText({
    super.key, required this.image, required this.title, required this.textcolor, this.backgroundColor, this.onTap,
  });
final String image ,title;
final Color textcolor;
final Color? backgroundColor; 
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    bool dark =UHelperFuntion.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          UCircularContainer(
            height: 56,
            width: 56,
            backgroundColor : backgroundColor?? (dark? UColors.dark: UColors.light),
            padding: EdgeInsets.all(USizes.md),
            child: Image(image: AssetImage(image),fit: BoxFit.cover),
          ),
          SizedBox(height: USizes.spaceBtwItems/2,),
          SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(
                      color: textcolor,
                    ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
