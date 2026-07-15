
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/authentication/shop/screen/Order/widgets/order_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UOrderScreen extends StatelessWidget {
  const UOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        title: Text("My Orders"),
        showBackArrow: true,
      ),
body: Padding(
  padding: UPadding.screenPadding,
  child: Column(children: [
    Expanded(child: UOrderList()),
  ],),
)

    );
  }
}