import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=>LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      

      body: SingleChildScrollView(
        child: Padding(padding:UPadding.screenPadding,
        child: Column(
        
          children: [
              //image
Image.asset(UImages.resetPassword,height: UDeviceHelper.getScreenWidth(context) * 0.6,),
SizedBox(height: USizes.spaceBtwSections),
//Title
Text(UText.passwordreset,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
SizedBox(height: USizes.spaceBtwSections),
//email
Text(UText.unknownemail,style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center,),
SizedBox(height: USizes.spaceBtwSections),
//subtitle
Text(UText.passwordresettext,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
//button
SizedBox(height: USizes.spaceBtwSections),
UElevatedButton(onPressed: (){}, child: Text(UText.done )),
SizedBox(height: USizes.spaceBtwInputFields),
//resendemail

 SizedBox(
   width: double.infinity,
   child:
    TextButton(onPressed: (){}, child: Text(UText.resendemail),
   ),
 ),
          ],
        ),
         ),
    ),
    );
  }
}