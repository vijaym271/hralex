import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:college_bag/widgets/profile_status_card.dart';
import 'package:college_bag/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  Widget _renderProfileComplete() {
    return const Center(
      child: Text(
        'HRAlex will start sharing\nyour profile once completed.',
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Jobs',
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0),
        child: Column(
          children: [
            const ProfileStatusCard(),
            const SizedBox(height: 12.0),
            Expanded(
              child: TabBarWidget(
                tabs: const ['Jobs', 'Internship', 'Placements'],
                tabViews: [
                  _renderProfileComplete(),
                  _renderProfileComplete(),
                  _renderProfileComplete(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
