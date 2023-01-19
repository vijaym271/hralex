import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/shape_painter.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  NotificationCard({super.key, this.index = 0, this.icon});
  final int index;
  final IconData? icon;
  final List<Map<String, Color>> colors = const [
    {
      'bg': Color(0xffFFF6F3),
      'title': Color(0xffD46F00),
      'icon': Color(0xffD46F00),
      'iconBg': Color(0xffFFECE6)
    },
    {
      'bg': Color(0xffE8F9FE),
      'title': Color(0xff00AAC4),
      'icon': Color(0xff00AAC4),
      'iconBg': Color(0xffDBFAFE)
    },
    {
      'bg': Color(0xffe7edff),
      'title': Color(0xff4E84FF),
      'icon': Color(0xff4E84FF),
      'iconBg': Color(0xffe7edff)
    },
  ];
  final List<CustomPainter> shapes = [
    TrianglePainter(
      paintingStyle: PaintingStyle.fill,
    ),
    CirclePainter(),
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, Color> color = colors[index % colors.length];
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      width: 160.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color['bg']!.withOpacity(1)),
      child: CustomPaint(
          painter: shapes[index % shapes.length],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: color['iconBg'],
                      borderRadius: BorderRadius.circular(18.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 0,
                        )
                      ]),
                  child: ClipOval(
                      child: Icon(
                    icon,
                    color: color['icon'],
                  ))),
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
                style: TextStyle(
                    fontWeight: FontUtils.fwBold, color: color['title']),
              ),
            ],
          )),
    );
  }
}
