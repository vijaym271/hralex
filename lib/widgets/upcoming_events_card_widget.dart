import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:flutter/material.dart';

class UpcomingEventsCard extends StatelessWidget {
  const UpcomingEventsCard({super.key, this.index = 0});
  final int index;
  final List<Map<String, Color>> colors = const [
    {'bg': Color(0xff4E84FF), 'iconBg': Color(0xff235AD6)},
    {'bg': Color(0xffDB77E8), 'iconBg': Color(0xffB956C6)},
    {'bg': Color(0xffFF77B7), 'iconBg': Color(0xffE3619E)},
    {'bg': Color(0xffFF9884), 'iconBg': Color(0xffD1715F)},
    {'bg': Color(0xffFFC963), 'iconBg': Color(0xffD5A64C)},
  ];
  @override
  Widget build(BuildContext context) {
    Map<String, Color> color = colors[index % colors.length];
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      width: 80.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0), color: color['bg']),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            color: ColorUtils.white.withOpacity(0.1),
            child: Column(
              children: [
                const Icon(
                  Icons.calendar_today,
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
                  'Jan'.toUpperCase(),
                  style: TextStyle(
                      fontSize: FontUtils.fs14,
                      color: ColorUtils.white.withOpacity(0.8)),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: color['iconBg'],
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: color['iconBg'],
                          borderRadius: BorderRadius.circular(18.0),
                          border: Border.all(color: color['bg']!)),
                      child: ClipOval(
                          child: Text(
                        '3',
                        style: TextStyle(
                            color: ColorUtils.white, fontSize: FontUtils.fs13),
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
