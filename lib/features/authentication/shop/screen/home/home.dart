import 'package:e_commerce/common/widgets/customs_shapes/clipper/primary_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UPrimaryHeaderContainer(
        height: 400,
        child: Container(),
      )
    );
  }
}
