import 'package:e_commerce/common/widgets/textfields/section_heading.dart';
import 'package:e_commerce/features/personalization/Screens/widgets/uprofileheader.dart';
import 'package:e_commerce/features/personalization/Screens/widgets/uprofilesettingtile.dart';
import 'package:e_commerce/features/personalization/Screens/widgets/uprofiletext.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // header profile picture and name
          UProfileprimaryheader(),
          Padding(
            padding: const EdgeInsets.all(USizes.defaultSpace),
            child: Column(
              children: [
                // user profile details
                UprofileText(),
                // account setting section heading
                USectionHeading(
                  title: 'Account Setting',
                  showActionButton: false,
                ),
                // My address
                UProfileSettingtile(
                    title: 'My Address',
                    subtitle: 'Set shopping delivery addresses',
                    icon: Iconsax.safe_home),
                // my cart
                UProfileSettingtile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart),
                    // My orders
                    UProfileSettingtile(
                    title: 'My Orders',
                    subtitle: 'View your order history and tracking information',
                    icon: Iconsax.bag_tick1),
                SizedBox(
                    width: double.infinity,
                    child:
                        OutlinedButton(onPressed: () {}, child: Text('Logout')))
              ],
            ),
          )
        ],
      ),
    );
  }
}
