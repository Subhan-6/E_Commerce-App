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
        this.child
  });

final double height, width, radius;
final Color backgroundColor;
final  EdgeInsetsGeometry ? padding , margin;
final Widget? child;
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
      child: child,
    );
  }
}