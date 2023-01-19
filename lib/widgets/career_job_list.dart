import 'package:flutter/material.dart';

import '../utils/color_utils.dart';

class CareerJobList extends StatefulWidget {
  CareerJobList({Key? key}) : super(key: key);

  @override
  State<CareerJobList> createState() => _CareerJobListState();
}

class _CareerJobListState extends State<CareerJobList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
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
        child: Text("kk"));
  }
}
