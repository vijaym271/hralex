import 'package:flutter/material.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  int selectedIndex = 0;

  Widget _buildDialog(BuildContext context) {
    return AlertDialog(
      title: Text('AlertDialog'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jobs Page')),
      body: Center(
        child: Column(
          children: [
            Text('Jobs Page'),
          ],
        ),
      ),
    );
  }
}
