import 'package:flutter/material.dart';

class TabSelectWidget extends StatelessWidget {
  const TabSelectWidget({
    super.key,
    required TabController Controller,
  }) : _Controller = Controller;

  final TabController _Controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            height: 50,
            child: TabBar(
                controller: _Controller,
                unselectedLabelColor: const Color(0xFFA5A7B9),
                labelStyle: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xFF4E4E61), Color(0xFF4E4E61)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(30)),
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Container(
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // border: Border.all(color: Colors.white, width: 1)
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('Your subscriptions'),
                      ),
                    ),
                  ),
                  Tab(
                    height: 36,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Upcoming bills',
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
