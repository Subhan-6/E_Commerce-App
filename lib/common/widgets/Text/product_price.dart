import 'package:flutter/material.dart';
class UProductPrice extends StatelessWidget {
  const UProductPrice({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxlines = 1,
    this.linethrough = false,
    this.isLarge = false,
  });
  final String currencySign, price;
  final int maxlines;
  final bool linethrough, isLarge;
  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      style:  isLarge? Theme.of(context).textTheme.headlineMedium!.apply(decoration: linethrough? TextDecoration.lineThrough : null) : Theme.of(context).textTheme.titleLarge!  .apply(decoration: linethrough? TextDecoration.lineThrough : null),
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis
    );
  }
}
