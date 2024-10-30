import 'package:flutter/material.dart';
import 'dart:ui';

class GlowingSunContainer extends StatelessWidget {
  final Widget? child;
  final double blur;
  final double glow;
  final Color glowColor;

  const GlowingSunContainer({
    super.key,
    this.child,
    this.blur = 10.0,
    this.glow = 20.0,
    this.glowColor = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: glowColor.withOpacity(0.6),
              blurRadius: glow * 2,
              spreadRadius: glow,
            ),
            BoxShadow(
              color: glowColor.withOpacity(0.3),
              blurRadius: glow * 4,
              spreadRadius: glow * 2,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                // Colors.white,
                glowColor,
                glowColor.withOpacity(0.5),
              ],
              stops: const [0.2, 0.6, 1.0],
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: blur,
              sigmaY: blur,
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
