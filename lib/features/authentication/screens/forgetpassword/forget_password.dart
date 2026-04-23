import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/forgetpassword/password_reset.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(UText.forgetPassword,style: Theme.of(context).textTheme.headlineMedium),
              
            SizedBox(height:USizes.spaceBtwItems/2),
            // sub title
            Text(UText.noWorries, style: Theme.of(context).textTheme.bodyMedium,)
          ],
            ),
            SizedBox(height: USizes.spaceBtwSections),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right),
                  labelText: UText.email ,
                ),
                ),
                SizedBox(height: USizes.spaceBtwSections/2),
                UElevatedButton(onPressed: ()=> Get.to(()=>PasswordResetScreen()), child: Text(UText.submit),)
              ],
            )
          ]),
        ),
      ),
    );
  }
}
