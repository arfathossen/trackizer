import 'package:flutter/material.dart';

class LinearProgressBarWidget extends StatefulWidget {
  
  const LinearProgressBarWidget({
    super.key,
  
  });

  @override
  _linearProgressBarWidgetState createState() =>
      _linearProgressBarWidgetState();
}

class _linearProgressBarWidgetState extends State<LinearProgressBarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween(begin: 0.0, end: 0.3).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: LinearProgressIndicator(
      color:Colors.blue ,
      value: animation.value,
    ));
  }
}
