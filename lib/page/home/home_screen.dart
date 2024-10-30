import 'package:flutter/material.dart';
import 'package:trackizer_app/page/home/components/top_container_widget.dart';
import 'package:trackizer_app/page/home/components/upcoming_bills.dart';
import 'package:trackizer_app/page/home/components/your_subscriotion_widget.dart';
import 'components/tab_select_widget.dart';

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
          height: 10,
        ),
        TabSelectWidget(Controller: _controller),
        Expanded(
          child: _controller.index == 0
              ? const YourSubscriotionWidget()
              : UpComingBills(),
        ),
      ],
    );
  }
}
