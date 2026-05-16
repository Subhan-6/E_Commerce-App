import 'package:e_commerce/features/personalization/Screens/edit%20profile/editprofile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class UprofileText extends StatelessWidget {
  const UprofileText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('UnKnown Pro',style: Theme.of(context).textTheme.headlineMedium,),
      subtitle: Text('unkownpro@gmial.com',style: Theme.of(context).textTheme.bodyMedium,),
      trailing: IconButton(onPressed: ()=> Get.to(()=>EditProfileScreen()), icon: Icon(Iconsax.edit))
    );
  }
}
