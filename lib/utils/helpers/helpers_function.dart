import 'package:flutter/material.dart';

class UHelperFuntion{
UHelperFuntion._();
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
} 