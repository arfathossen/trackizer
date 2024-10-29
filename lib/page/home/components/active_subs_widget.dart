import 'package:flutter/material.dart';
import 'package:trackizer_app/page/home/home_screen.dart';

class ActiveSubswidget extends StatelessWidget {
  const ActiveSubswidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        YourSubsWidget(
          title: 'Active subs',
          count: '12',
          topBar: Colors.red,
        ),
        YourSubsWidget(
          title: 'Highest subs',
          count: "\$19.99",
          topBar: Colors.purpleAccent,
        ),
        YourSubsWidget(
          title: 'Lowest subs',
          count: '\$5.99',
          topBar: Color.fromARGB(255, 48, 184, 184),
        ),
      ],
    );
  }
}

class YourSubsWidget extends StatelessWidget {
  final String title, count;
  final Color topBar;
  const YourSubsWidget({
    super.key,
    required this.title,
    required this.count,
    required this.topBar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF4E4E61),
      ),
      child: Column(
        children: [
          Container(
            width: 45,
            height: 1,
            decoration: BoxDecoration(color: topBar),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 13,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white30),
                  ),
                  Text(
                    count,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
