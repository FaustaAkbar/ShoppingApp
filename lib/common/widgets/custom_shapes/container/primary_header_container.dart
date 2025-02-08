import 'package:ecommerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FPrimaryHeaderContainer extends StatelessWidget {
  const FPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FCurvedEdgeWidget(
      child: Container(
        color: FColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            //------ Background custom shapes ------
            Positioned(
              top: -150,
              right: -250,
              child: FCircularContainer(
                backgroundColor: FColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: FCircularContainer(
                backgroundColor: FColors.textWhite.withOpacity(0.1),
              ),
            ),

            //------ Widget Child ------
            child
          ],
        ),
      ),
    );
  }
}
