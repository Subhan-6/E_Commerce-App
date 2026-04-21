
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/utils/constants/text.dart';import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       //Email
    TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Iconsax.direct_right),
        labelText: UText.email,
    
    )
     ),
     SizedBox(height:USizes.spaceBtwInputFields),
     // Password
     TextFormField(
    decoration: InputDecoration(prefixIcon: Icon(Iconsax.lock),
    labelText: UText.password,
    suffixIcon: Icon(Iconsax.eye),
    ),
    ),
    // Remeber ME & Forget Password
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
     children: [
       Checkbox(value: true, onChanged: (value){}),
        Text(UText.rememberMe),  
     ],
        ),
        SizedBox(height:USizes.spaceBtwInputFields/2),
      // Forget Password
       Row(
        children: [
     TextButton(onPressed: (){},
      child: Text(UText.forgetpassword), 
     
     )
        ],
       )
      ],
    ) ,    
     SizedBox(height: USizes.spaceBtwSections),
     // Sign In    
     UElevatedButton(onPressed: (){}, 
     child: Text(UText.signIn),),
     SizedBox(height: USizes.spaceBtwItems/2),
     
     // create Account
      UElevatedButton(onPressed: (){}, 
     child: Text(UText.createAccount),)
      ],
    );
  }
}

