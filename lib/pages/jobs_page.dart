import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:college_bag/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Jobs',
        actionsWidget: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt_sharp))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: const TabBarWidget(
          tabs: ['Jobs', 'Internships'],
          tabViews: [
            Center(
              child: Text('jobs'),
            ),
            Center(
              child: Text('Internships'),
            )
          ],
        ),
      ),
    );
  }
}
