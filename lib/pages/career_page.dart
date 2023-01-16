import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class CareerPage extends StatefulWidget {
  const CareerPage({super.key});

  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Career',
        actionsWidget: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt_sharp))
        ],
      ),
      body: const Center(
        child: Text('Career Page'),
      ),
    );
  }
}
