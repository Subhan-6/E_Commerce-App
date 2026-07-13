import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class UPromocode extends StatelessWidget {
  const UPromocode({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(left: USizes.md, right: USizes.sm, top: USizes.sm, bottom: USizes.sm),
      child: Row(children: [
        Flexible(
          child: TextFormField(decoration: InputDecoration(hintText: "Enter promo code",
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
                 errorBorder: InputBorder.none,
                 disabledBorder: InputBorder.none,           
          ),),
        ),
        SizedBox(
          width: 80,
          child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: UColors.grey.withValues(alpha: 0.2),
          foregroundColor: dark ? UColors.white.withValues(alpha: 0.5) : UColors.dark.withValues(alpha: 0.5),
         side: BorderSide(color: Colors.grey.withValues(alpha: 0.5))
          ),
          child: Text("Apply"),
          )
          
          ),

      ],),
      
    );
   
  }
}
