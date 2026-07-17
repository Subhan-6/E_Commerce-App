import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class UGridLayout extends StatelessWidget {
  const UGridLayout({
    super.key, required this.itemCount, required this.mainAxisExtent, required this.itemBuilder,
  });
final int itemCount;
final double mainAxisExtent;
final Widget Function(BuildContext, int index) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      crossAxisSpacing: USizes.gridViewSpacing,
      mainAxisSpacing: USizes.gridViewSpacing,
      mainAxisExtent: mainAxisExtent,
      ), 
      itemBuilder:  itemBuilder,);
  }
}

