import 'package:flutter/material.dart';

import '../utils/color_utils.dart';

class CareerJobList extends StatefulWidget {
  CareerJobList({Key? key}) : super(key: key);

  @override
  State<CareerJobList> createState() => _CareerJobListState();
}

class _CareerJobListState extends State<CareerJobList> {
  List<String> numberTruthList = [
    "Web Developer",
    "Software Developer",
    "Front End Developer",
    "Network Engineer",
    "Java Developer",
    "IOS Developer",
    "SQL Developer",
    "Android Developer",
    "Salesforce Developer",
    ".NET Developer",
    "Python Developer",
    "Game Developer",
    "Data Analyst"
  ];

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(numberTruthList.length, false);
  }

  late List<bool> _isChecked;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: ColorUtils.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  color: ColorUtils.boxShadow.withOpacity(0.2),
                  blurRadius: 1.5,
                  spreadRadius: 0.1,
                  offset: const Offset(1, 2)),
            ]),
        child: ListView.builder(
          itemCount: numberTruthList.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              title: Text(numberTruthList[index]),
              value: _isChecked[index],
              onChanged: (val) {
                setState(
                  () {
                    _isChecked[index] = val!;
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
