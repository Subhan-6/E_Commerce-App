import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';



class UCircularContainer extends StatelessWidget {
  const UCircularContainer({
    super.key, 
     this.height = 400,
      this.width = 400,
       this.radius =400,
        this.backgroundColor = UColors.white, 
        this.padding, this.margin,
  });

final double height, width, radius;
final Color backgroundColor;
final  EdgeInsetsGeometry ? padding , margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: 
      BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}