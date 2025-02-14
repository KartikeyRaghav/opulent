import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:opulent/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:opulent/utils/constants/colors.dart';

class OpulentPrimaryHeaderContainer extends StatelessWidget {
  const OpulentPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OpulentCurvedEdgesWidget(
      child: Container(
        color: OpulentColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: OpulentCircularContainer(
                backgroundColor: OpulentColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: OpulentCircularContainer(
                backgroundColor: OpulentColors.textWhite.withOpacity(0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
