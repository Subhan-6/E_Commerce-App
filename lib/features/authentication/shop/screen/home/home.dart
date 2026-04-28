import 'package:e_commerce/common/widgets/customs_shapes/circular_container.dart';
import 'package:e_commerce/features/authentication/shop/screen/home/widgets/uprimary_header_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UPrimaryHeaderContainer(
        height: 400,
        child: const SizedBox(), // Add your header contents here
      )
    );
  }
}
