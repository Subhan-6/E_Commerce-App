import 'package:e_commerce/common/widgets/customs_shapes/clipper/custom_rounded_cliper.dart';
import 'package:flutter/cupertino.dart';

class URoundedEdges extends StatelessWidget {
  const URoundedEdges({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomRoundedEdges(), 
      child : child,
    )
    ;
  }
}