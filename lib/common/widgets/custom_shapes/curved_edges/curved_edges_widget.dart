import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class FCurvedEdgeWidget extends StatelessWidget {
  const FCurvedEdgeWidget({super.key, this.child});

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FCustomCurvedEdges(),
      child: child,
    );
  }
}
