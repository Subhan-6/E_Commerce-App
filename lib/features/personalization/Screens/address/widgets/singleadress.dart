import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class USingleAddress extends StatelessWidget {
  const USingleAddress({
    super.key, required this.isSelected,
  });
  final bool isSelected ;

  @override
  Widget build(BuildContext context) {
      final dark = UHelperFuntion.isDarkMode(context);
    return URoundedContainer(
      backgroundColor: isSelected? UColors.primary.withValues(alpha:0.3) : Colors.transparent,
      borderColor: isSelected ? Colors.transparent : dark?  UColors.darkGrey : UColors.grey,
    width: double.infinity,
      showBorder: true,
      padding: EdgeInsets.all(USizes.md),
      child:  Stack(
        children: [
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //name
          Text("Subhan", style: Theme.of(context).textTheme.titleLarge,maxLines: 1,overflow: TextOverflow.ellipsis,),
          SizedBox(height: USizes.spaceBtwItems/2),
          // Number

          Text("03267978090", style: Theme.of(context).textTheme.titleLarge,maxLines: 1,overflow: TextOverflow.ellipsis,),
          SizedBox(height: USizes.spaceBtwItems/2),
          // Adress
          Text("House # 24 Block Gulshan-e-Madina", style: Theme.of(context).textTheme.titleLarge,maxLines: 1,overflow: TextOverflow.ellipsis,),
        
        ]
    
      ),
// verified icon
      if(isSelected)Positioned
      (
        top: 0,
        bottom: 0,
        right: 6,
        child: 
        Icon(Iconsax.tick_circle5))
        
        ]
      )
    
    );
  }
}
      