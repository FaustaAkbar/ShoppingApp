import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

/* 

  WIDGET FOR CURVED HOME PAGE

 */
class FCurvedEdgeWidget extends StatelessWidget {
  const FCurvedEdgeWidget({super.key, this.child});

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      //------ Main Function for Create Shapes ------
      clipper: FCustomCurvedEdges(),
      child: child,
    );
  }
}
