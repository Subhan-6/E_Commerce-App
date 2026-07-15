import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/Text/promocodefield.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/common/widgets/customs_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/cart/cartitems.dart';
import 'package:e_commerce/common/widgets/sucess_screen/account_sucessful_screen.dart';
import 'package:e_commerce/features/authentication/shop/screen/cart/widgets/billing_address.dart';
import 'package:e_commerce/features/authentication/shop/screen/cart/widgets/billing_sectioon.dart';
import 'package:e_commerce/features/authentication/shop/screen/cart/widgets/billingsummary.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/home.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFuntion.isDarkMode(context);
    return Scaffold(
      // App Bar
      appBar: UAppBar(title: Text( "Checkout", style: Theme.of(context).textTheme.titleLarge,),showBackArrow: true,),
// Body 
body:
     Padding(
       padding: UPadding.screenPadding,
       child: SingleChildScrollView(
         child: Column(children: [
             UCartItems(dark: dark, addremovebutton: false,),
              SizedBox(height: USizes.spaceBtwSections,),
              UPromocode(dark: dark),
              SizedBox(height: USizes.spaceBtwSections,),
              // Order Summary Section
              URoundedContainer(
                 showBorder: true,
             backgroundColor: Colors.transparent,
             padding: EdgeInsets.all(USizes.sm),
             child: Column(
               children: [
                // Billing Summary
                 UBIllingSUmmary(),
                 SizedBox(height: USizes.spaceBtwSections,),
                 // Billing Section
                 UBilligPaymentSection(),
                 SizedBox(height: USizes.spaceBtwSections,),
                 //Billing Adress
                 UBillingAdress(),
   
               ],
             )
             
             )
            

             ],),
             
     ),
    ),
bottomNavigationBar: Padding(
        padding: UPadding.screenPadding,
        child: UElevatedButton(
          onPressed: ()=>Get.to(()=>AccountSucessfulScreen(image: UImages.successfulPaymentIcon ,title: "Payment sucess" ,subtitle:"item will be shipped soon" ,onTap: () => Get.offAll(()=>HomeScreen()),)),
          child: Text('Checkout \$8258'),
        ),
     ),

    );
    
     }
     }

