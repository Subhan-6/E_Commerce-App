import 'package:flutter/material.dart';

class UProductTitleText extends StatelessWidget {
  const UProductTitleText({
    super.key, required this.title, this.smallSize= false,  this.maxlines= 2,  this.textAlign = TextAlign.start,
  });
final String title;
final bool smallSize ;
final int maxlines ;
final TextAlign textAlign ;

  @override
  Widget build(BuildContext context) {
    return Text(title,style:smallSize? Theme.of(context).textTheme.titleSmall:Theme.of(context).textTheme.titleLarge ,maxLines: maxlines ,textAlign: textAlign,overflow: TextOverflow.ellipsis,);
  }
}

