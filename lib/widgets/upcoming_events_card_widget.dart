import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class UpcomingEventsCard extends StatelessWidget {
  const UpcomingEventsCard({super.key});
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
      width: 80.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color.withOpacity(0.6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            color: color.withOpacity(0.3),
            child: Column(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: ColorUtils.white,
                  size: 18.0,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  '03',
                  style: TextStyle(
                      fontSize: FontUtils.fs16,
                      fontWeight: FontUtils.fwBold,
                      color: ColorUtils.white),
                ),
                Text(
                  'Jan',
                  style: TextStyle(
                      fontSize: FontUtils.fs14, color: ColorUtils.white),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                CircleAvatar(
                    radius: 15.0,
                    backgroundColor: color,
                    child: const ClipOval(child: FlutterLogo())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
