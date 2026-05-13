import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/customs_shapes/clipper/primary_header_container.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:e_commerce/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: USizes.storePrimaryHeaderHeight + 10),
             UPrimaryHeaderContainer(
               height: USizes.storePrimaryHeaderHeight,
               child: UAppBar( title: Text('Store',style: Theme.of(context).textTheme.headlineMedium!.apply(color: UColors.white),
               ),
               actions: [
                 UCartCounter (dark: dark)
               ],
               ),
             ),
             Searchbar()
      ],
    );
  }
}