import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class UTabBar extends StatelessWidget implements PreferredSizeWidget {
  const UTabBar({
    super.key,
    required this.tabs,
  });
  final List<Widget>tabs;
  @override
  Widget build(BuildContext context) {
    final  dark= UHelperFuntion.isDarkMode(context);

    return Material(
      color: dark ? UColors.black : UColors.white,
      
      child: TabBar(
        isScrollable: true,
        labelColor: dark ? UColors.white : UColors.primary, 
        tabs: tabs
    
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}
