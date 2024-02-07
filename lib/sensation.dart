library sensation;

import 'package:flutter/material.dart';

class Sensation extends StatefulWidget {
  /// Widget to be augmented with gesture detection
  final Widget child;

  /// Callback to be run when Widget is tapped
  final VoidCallback? onTap;

  /// Callback to be run when Widget is double-tapped
  final VoidCallback? onDoubleTap;

  /// Callback to be run when Widget is long-pressed
  final VoidCallback? onLongPress;

  /// Creates a [Sensation] widget
  const Sensation({
    super.key,
    required this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  State<Sensation> createState() => SensationState();
}

class SensationState extends State<Sensation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        onDoubleTap: widget.onDoubleTap,
        onLongPress: widget.onLongPress,
        child: widget.child);
  }
}
