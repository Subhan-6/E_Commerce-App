import 'package:e_commerce/common/widgets/customs_shapes/circular_container.dart';
import 'package:e_commerce/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip
({super.key, required this.text, this.onSelected, required this.selected});
final String text;
final Function(bool)? onSelected;
final bool selected;
  @override
  Widget build(BuildContext context) {
    bool isColor = UHelperFuntion.getColor(text) != null;
    return ChoiceChip(
      label: isColor? SizedBox(): Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected? Colors.white : null),
      shape: isColor ? CircleBorder() : null,
      padding: isColor? EdgeInsets.zero : null,
      labelPadding: isColor? EdgeInsets.zero : null,
      backgroundColor: isColor?  UHelperFuntion.getColor(text) : null,
avatar: isColor? UCircularContainer(width: 50,height: 50,backgroundColor:  UHelperFuntion.getColor(text)!) : null,
    );
  }
}