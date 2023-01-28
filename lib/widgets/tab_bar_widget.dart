import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget(
      {super.key, this.tabs = const [], this.tabViews = const []});
  final List<String> tabs;
  final List<Widget> tabViews;

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 44.0,
            decoration: BoxDecoration(
                color: ColorUtils.primary,
                borderRadius: BorderRadius.circular(30.0)),
            child: TabBar(
                controller: _controller,
                indicator: BoxDecoration(
                    color: ColorUtils.white,
                    borderRadius: BorderRadius.circular(30.0)),
                padding: const EdgeInsets.all(4.0),
                labelColor: ColorUtils.primary,
                unselectedLabelColor: ColorUtils.white,
                labelStyle: TextStyle(
                  fontSize: FontUtils.fs14,
                ),
                unselectedLabelStyle: TextStyle(fontSize: FontUtils.fs14),
                tabs: widget.tabs
                    .map((e) => Tab(
                          text: e,
                        ))
                    .toList())),
        Expanded(
          child: TabBarView(controller: _controller, children: widget.tabViews),
        )
      ],
    );
  }
}
