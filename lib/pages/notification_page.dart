import 'package:college_bag/pages/podcast_details.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/play_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/color_utils.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/avatar_widget.dart';
import '../widgets/card_widget.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, Color>> colors = const [
    {'avatarColor': Color(0xffDB77E8)},
    {'avatarColor': Color(0xffFF77B7)},
    {'avatarColor': Color(0xffFF9884)},
    {'avatarColor': Color(0xffFFC963)},
  ];
  List<Map<String, dynamic>> data = [
    {
      "title": 'Jobs',
      "lastSeen": '2 mins ago',
      "locationDetails":
          'Flutter Developer - Immediate Joiner, Tandem Crystals Pvt Ltd, Chennai, Tamil Nadu',
      "eventDateAndTime": '03-Jan-2023',
    },
    {
      "title": 'Study Abroad',
      "lastSeen": '8 mins ago',
      "locationDetails": 'P.S.R Engineering College',
      "eventDateAndTime": '03-Jan-2023 ',
    },
    {
      "title": 'Placememts',
      "lastSeen": '10 mins ago',
      "locationDetails": 'Sri Sivasubramaniya Nadar College of Engineering',
      "eventDateAndTime": '03-Jan-2023 ',
    }
  ];

  Widget _renderContent(Map<String, dynamic> item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item['title'],
          style:
              TextStyle(fontSize: FontUtils.fs15, fontWeight: FontUtils.fwBold),
        ),
        const SizedBox(height: 5.0),
        Text(
          item['locationDetails'],
          style: TextStyle(
              fontSize: FontUtils.fs12,
              color: ColorUtils.font.withOpacity(0.9)),
        ),
        const SizedBox(height: 2.0),
        Text(
          item['eventDateAndTime'],
          style: TextStyle(
              fontSize: FontUtils.fs12,
              color: ColorUtils.font.withOpacity(0.9)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.scaffold,
      appBar: AppBarWidget(
        title: 'Notifications',
        elevation: 0.0,
        actionsWidget: [
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bell))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> item = data[index];
              Map<String, dynamic> color = colors[index % colors.length];
              return CardWidget(
                titleWidget: _renderContent(item),
                // titleWidget: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       item['title'],
                //       style: TextStyle(
                //           fontWeight: FontUtils.fwBold,
                //           fontSize: FontUtils.fs17),
                //     ),
                //   ],
                // ),
                content: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      item['lastSeen'],
                      style: TextStyle(
                          fontSize: FontUtils.fs12,
                          color: ColorUtils.font.withOpacity(0.9)),
                    ),
                  ),
                ),
                borderTheme: color['avatarColor'],
              );
            }),
      ),
    );
  }
}
