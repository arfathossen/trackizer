import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:trackizer_app/shared/constants_colors.dart';

class ProgresHalfContainerWidget extends StatefulWidget {
  const ProgresHalfContainerWidget({super.key});

  @override
  State<ProgresHalfContainerWidget> createState() =>
      _ProgresHalfContainerWidgetState();
}

class _ProgresHalfContainerWidgetState
    extends State<ProgresHalfContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return const CircularArc();
  }
}

class CircularArc extends StatefulWidget {
  const CircularArc({super.key});

  @override
  State<CircularArc> createState() => _CircularArcState();
}

class _CircularArcState extends State<CircularArc>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    final curvedAnimation = CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutCubic);
    animation = Tween<double>(begin: 0.0, end: 3.14).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    animationController.repeat(reverse: false); // Play the animation once
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      margin: const EdgeInsets.only(left: 60),
      child: Stack(
        children: [
          CustomPaint(
              size: const Size(200, 100), // Half circle size
              painter: ProgressArc(animation.value, Colors.red, true)),
          CustomPaint(
              size: const Size(200, 100), // Half circle size
              painter:
                  ProgressArc(animation.value, const Color(0xFFAD7BFF), false)),
          Positioned(
              top: 60,
              left: 65,
              right: 30,
              child: Text(
                "\$82,97",
                style: TextStyle(
                    color: Constants.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          Positioned(
              bottom: 10,
              left: 50,
              right: 30,
              child: Text(
                "of \$2,000 budget",
                style: TextStyle(
                    color: Constants.secondaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ))
        ],
      ),
    );
  }
}

class ProgressArc extends CustomPainter {
  final double arc;
  final Color progressColor;
  final bool isBackground;

  ProgressArc(this.arc, this.progressColor, this.isBackground);

  @override
  void paint(Canvas canvas, Size size) {
    const rect = Rect.fromLTRB(0, 0, 206, 206);
    const startAngle = -math.pi; // Start from the left
    final sweepAngle = arc ?? math.pi; // Sweep angle based on animation value
    const useCenter = false;

    // Paint for the arc
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    // Draw background arc
    if (isBackground) {
      // paint.color = Colors.grey; // Background color
      // canvas.drawArc(rect, startAngle,sweepAngle, useCenter, paint);
    }
    // Draw progress arc
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Repaint when value changes
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: const Text('Half Circle Progress Indicator')),
//       body: const Center(child: ProgresHalfContainerWidget()),
//     ),
//   ));
// }
