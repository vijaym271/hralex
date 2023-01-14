import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});
  final List<Color> colors = const [
    ColorUtils.appGreen,
    ColorUtils.appLightOrange,
    ColorUtils.appYellow,
    ColorUtils.appYellow,
    ColorUtils.appOrange,
    ColorUtils.appPink,
    ColorUtils.red,
    ColorUtils.blue,
    ColorUtils.green,
    ColorUtils.yellow,
    ColorUtils.pink,
  ];
  @override
  Widget build(BuildContext context) {
    Color color = colors[Random().nextInt(colors.length)];
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      width: 120.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color.withOpacity(0.2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 18.0,
              backgroundColor: color.withOpacity(0.2),
              child: const ClipOval(child: FlutterLogo())),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            '03-Jan-2023',
            style: TextStyle(fontSize: FontUtils.fs10),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            'Study Abroad',
            style: TextStyle(fontWeight: FontUtils.fwBold, color: color),
          ),
        ],
      ),
    );
  }
}
