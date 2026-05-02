import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class AccountSucessfulScreen extends StatelessWidget {
  const AccountSucessfulScreen({super.key, required this.title, required this.subtitle, required this.image, required this.onTap});
final String title, subtitle,image;
final VoidCallback onTap;
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
          Image.asset(image, height: UDeviceHelper.getScreenWidth(context)*0.6,),
          SizedBox(height: USizes.spaceBtwSections),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
          Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center ,),
          SizedBox(height: USizes.spaceBtwItems,),
          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
          SizedBox(height: USizes.spaceBtwSections,),
          UElevatedButton(onPressed: onTap, child: Text(UText.continueb))
        ],)
        ],),
        



        ),
        
      ),
    );
  }
}