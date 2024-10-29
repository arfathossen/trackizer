import 'package:flutter/material.dart';

import 'package:trackizer_app/page/home/components/top_container_widget.dart';
import 'package:trackizer_app/page/home/components/upcoming_bills.dart';
import 'package:trackizer_app/page/home/components/your_subscriotion_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
    _controller.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_controller.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopContainerWidget(),
        const SizedBox(
          height: 15,
        ),
        TabSelectWidget(Controller: _controller),
        Expanded(
          child: _controller.index == 0
              ? const YourSubscriotionWidget()
              : UpcomingBills(),
        ),
      ],
    );
  }
}

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
