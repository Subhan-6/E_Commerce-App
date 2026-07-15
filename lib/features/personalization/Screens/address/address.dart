import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/personalization/Screens/address/address_new.dart';
import 'package:e_commerce/features/personalization/Screens/address/widgets/singleadress.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class address extends StatelessWidget {
  const address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: UAppBar(showBackArrow: true, title: Text("Addresses") , style: Theme.of(context).textTheme.headlineMedium,),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
           // Address List
           USingleAddress(isSelected: true,),   
           SizedBox(height: USizes.md,), 
           // Address List
           USingleAddress(isSelected: false,),

            ]
          ),
        ),),

        // Floating Action Button
        floatingActionButton: FloatingActionButton(
          backgroundColor: UColors.primary,
          onPressed: ()=>Get.to(()=>address_new()),
          child: Icon(Iconsax.add,color: Colors.white),
        
        ),

    
      
    );
  }
}

