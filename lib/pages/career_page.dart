import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import '../widgets/career-quote.dart';
import '../widgets/career_job_list.dart';

class CareerPage extends StatefulWidget {
  const CareerPage({super.key});

  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {
  int selectedIndex = 0;
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: ColorUtils.white,
    backgroundColor: ColorUtils.primary,
    // minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
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
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Select job titles",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 8),
            CareerJobList(),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {},
                child: Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
