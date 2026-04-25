import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/sign_up/account_sucessful_screen.dart';
import 'package:e_commerce/utils/constants/Text.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    automaticallyImplyLeading: false,
    actions: [
      IconButton(onPressed: ()=>Get.offAll(()=>LoginScreen()), icon: Icon(CupertinoIcons.clear))
    ],
    ),
    body: SingleChildScrollView(
      child:
       Padding(
         padding: UPadding.screenPadding,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset(UImages.resetPassword, height: UDeviceHelper.getScreenWidth(context )*0.6,),
             SizedBox(height:USizes.spaceBtwSections),
             Text(UText.verifyemail, style: Theme.of(context).textTheme.headlineMedium,),
             SizedBox(height:USizes.spaceBtwItems),
             Text(UText.unknownemail,style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),
             SizedBox(height:USizes.spaceBtwItems),
             Text(UText.Weve ,style: Theme.of(  context).textTheme.bodyMedium,),
             SizedBox(height:USizes.spaceBtwItems),
             UElevatedButton(onPressed: ()=>Get.to(()=>AccountSucessfulScreen()), child: Text( UText.continueb)),
             SizedBox(height:USizes.spaceBtwItems),
             SizedBox(
             width: double.infinity,
             child:
              TextButton(onPressed: (){}, child: Text(UText.resendemail)))


           ],
         ),
       )
    ),
    
    );
  }
}