import 'package:flutter/material.dart';

import 'package:trackizer_app/page/home/components/active_subs_widget.dart';
import 'package:trackizer_app/page/home/components/circle_progress_widget.dart';

import 'dart:math' as math;

class TopContainerWidget extends StatelessWidget {
  const TopContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: MediaQuery.sizeOf(context).height * 0.55,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF282833),
              Color(0xFF282833),
            ],
            stops: [.0, 61],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: Colors.grey[700],
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: const Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CircleProgressWidget(),
          SizedBox(
            height: 25,
          ),
          ActiveSubswidget()
        ],
      ),
    );
  }
}
