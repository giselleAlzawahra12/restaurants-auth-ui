import 'package:flutter/material.dart';

class AppAnimation extends StatefulWidget {
  const AppAnimation({
    super.key,
    required this.xOffset,
    required this.yOffset,
    required this.child,
  });
  final double xOffset;
  final double yOffset;
  final Widget child;

  @override
  State<AppAnimation> createState() => _AppAnimationState();
}

class _AppAnimationState extends State<AppAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> transition;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    transition = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: Offset(widget.xOffset, widget.yOffset),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInCubic,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom != 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
    return SlideTransition(
      position: transition,
      child: widget.child,
    );
  }
}
