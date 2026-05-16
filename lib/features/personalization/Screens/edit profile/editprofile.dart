import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/features/personalization/Screens/edit%20profile/widgets/uprofileedit.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              // profile logo with edit button
              UProfileEditwidget(),
              SizedBox(height: USizes.spaceBtwItems),
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),
              // account settings section heading
              USectionHeading(title: 'Account Settings', showActionButton: false,),
             // user details row
             UserDetailRow(title: 'Name ',value: 'UnKnown pro',icon: Iconsax.arrow_right_34,onTap: (){},),
             UserDetailRow(title: 'User Name ',value: 'UnKnown_pro11',icon: Iconsax.arrow_right_34,onTap: (){},),
               SizedBox(height: USizes.spaceBtwItems),
             Divider(),
               SizedBox(height: USizes.spaceBtwItems),
             // Profile Setting
              USectionHeading(title: 'Profile Settings', showActionButton: false,),
              //profile details row
             UserDetailRow(title: 'User Id',value: '232345',icon: Iconsax.copy5,onTap: (){},),
             UserDetailRow(title: 'Email',value: 'unknownpro@gmail.com',icon: Iconsax.arrow_right_34,onTap: (){},),
             UserDetailRow(title: 'Phone no',value: '+921234567890',icon: Iconsax.arrow_right_34,onTap: (){},),
             UserDetailRow(title: 'Gender',value: 'Male',icon: Iconsax.arrow_right_34,onTap: (){},),
              SizedBox(height: USizes.spaceBtwItems),
              Divider(),
              SizedBox(height: USizes.spaceBtwItems/2),
              // logout button
              TextButton(onPressed: (){}, child: Text('Close Account',style: TextStyle(color: Colors.red),)),
              SizedBox(height: USizes.spaceBtwItems/2),
            ],
          ),
        ),
      )
    );
  }
}

class UserDetailRow extends StatelessWidget {
  const UserDetailRow({
    super.key, required this.title, required this.value, required this.icon, required this.onTap,
  });
final String title,value;
final IconData icon;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Expanded(
         flex: 3,
         child: Text('$title :', style: Theme.of(context).textTheme.bodySmall,overflow:TextOverflow.ellipsis ,),
       ),
       Expanded(
         flex: 5,
         child: Text('$value', style: Theme.of(context).textTheme.bodyMedium,overflow:TextOverflow.ellipsis ,),
       ),
       Expanded(
         child: IconButton(
           onPressed: onTap,
           icon: Icon(icon,size: USizes.iconSm,),
         ),
       )
     ],
    );
  }
}

