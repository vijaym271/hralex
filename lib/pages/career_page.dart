import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/career-quote.dart';
import '../widgets/career_job_list.dart';

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
      body: Container(
        padding: const EdgeInsets.only(
            left: 10.0, bottom: 4.0, top: 4.0, right: 4.0),
        child: Column(
          children: [
            CareerQuote(),
            SizedBox(height: 16),
            Center(
              child: CareerJobList(),
            ),
          ],
        ),
      ),
    );
  }
}
