import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:college_bag/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventPage extends StatefulWidget {
  EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final List<Map<String, Color>> colors = const [
    {'avatarColor': Color(0xffDB77E8)},
    {'avatarColor': Color(0xffFF77B7)},
    {'avatarColor': Color(0xffFF9884)},
    {'avatarColor': Color(0xffFFC963)},
  ];
  List<Map<String, dynamic>> data = [
    {
      "title": 'One Day Workshop On “Experimental...',
      "lastSeen": '2 mins ago',
      "locationDetails": 'Bannari Amman Institute of Technology',
      "eventDateAndTime": '28 Jan 2023 || 7PM to 8PM ',
    },
    {
      "title": 'National Level Technical Symposium',
      "lastSeen": '8 mins ago',
      "locationDetails": 'P.S.R Engineering College',
      "eventDateAndTime": '28 Jan 2023 || 7PM to 8PM ',
    },
    {
      "title": 'Workshop On Intellectual Property Rig',
      "lastSeen": '10 mins ago',
      "locationDetails": 'Sri Sivasubramaniya Nadar College of Engineering',
      "eventDateAndTime": '28 Jan 2023 || 7PM to 8PM ',
    },
    {
      "title": 'JSREC- Smt.K.Periyammal Memorial Tro',
      "lastSeen": '1.2 mins ago',
      "locationDetails": 'JAI SHRIRAM ENGINEERING COLLEGE',
      "eventDateAndTime": '28 Jan 2023 || 7PM to 8PM ',
    },
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
        title: 'Events',
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
