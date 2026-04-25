import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/utils/constants/Text.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSucessfulScreen extends StatelessWidget {
  const AccountSucessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [
          Image.asset(UImages.account, height: UDeviceHelper.getScreenWidth(context)*0.6,),
          SizedBox(height: USizes.spaceBtwSections),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
          Text(UText.accountsucessfully, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center ,),
          SizedBox(height: USizes.spaceBtwItems,),
          Text(UText.congratulation, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
          SizedBox(height: USizes.spaceBtwSections,),
          UElevatedButton(onPressed: (){}, child: Text(UText.continueb))
        ],)
        ],),
        



        ),
        
      ),
    );
  }
}