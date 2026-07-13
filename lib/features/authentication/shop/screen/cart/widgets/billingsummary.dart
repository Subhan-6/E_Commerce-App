import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';

class UBIllingSUmmary extends StatelessWidget {
  const UBIllingSUmmary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       //subtotal
    Row(
      children: [
        
        Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium,),
        Spacer(),
        Text("\$8258", style: Theme.of(context).textTheme.bodyMedium,)
      ]
    ),
    SizedBox(height: USizes.spaceBtwItems/2,),
    //shipping fee
    Row(
      children: [
        
        Text("ShippingFee", style: Theme.of(context).textTheme.bodyMedium,),
        Spacer(),
        Text("\$32", style: Theme.of(context).textTheme.bodyMedium,)
      ]
    ),
    SizedBox(height: USizes.spaceBtwItems/2,),
    //tax
    Row(
      children: [
        
        Text("Tax", style: Theme.of(context).textTheme.bodyMedium,),
        Spacer(),
        Text("\$231", style: Theme.of(context).textTheme.bodyMedium,)
      ]
    ),
    SizedBox(height: USizes.spaceBtwItems/2,),
    //total
    Row(
      children: [
        
        Text("OrderTotal", style: Theme.of(context).textTheme.titleLarge,),
        Spacer(),
        Text("\$8668", style: Theme.of(context).textTheme.titleLarge,)
      ]
    ),
    
    
    
     ]);
  }
}

