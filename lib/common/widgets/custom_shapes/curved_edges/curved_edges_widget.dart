import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class OpulentCurvedEdgesWidget extends StatelessWidget {
  const OpulentCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: OpulentCurvedEdges(), child: child);
  }
}
