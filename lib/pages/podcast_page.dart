import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:college_bag/widgets/avatar_widget.dart';
import 'package:college_bag/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class PodcastPage extends StatefulWidget {
  const PodcastPage({super.key});

  @override
  State<PodcastPage> createState() => _PodcastPageState();
}

class _PodcastPageState extends State<PodcastPage> {
  final List<Map<String, Color>> colors = const [
    {'avatarColor': Color(0xff33BF93)},
    {'avatarColor': Color(0xff00DEF4)},
    {'avatarColor': Color(0xff00B8FF)},
    {'avatarColor': Color(0xff00B8FF)},
  ];
  List<Map<String, dynamic>> data = [
    {
      "title": 'Elon Musk Podcast',
      "lastSeen": '2 mins ago',
      "videoDuration": '12mins',
      "contentHeading": 'HUGE Twitter Update: Elon Musk to introduce',
      "content":
          'Twitter CEO Elon Musk has confirmed that the character limit for tweets will increase from 280 to 4,000 characters early next month.'
    },
    {
      "title": '3 Things',
      "lastSeen": '11 hours ago',
      "videoDuration": '20mins',
      "contentHeading": 'Ozone layer slowly heals, RRR song wins...',
      "content":
          'First, Indian Express’ Amitabh Sinha explains how the Ozone layer is slowly healing, and what had caused it to deplete. Next, Indian Express'
    },
    {
      "title": 'The Daily',
      "lastSeen": '24 hours ago',
      "videoDuration": '2hrs',
      "contentHeading": 'The Presidents and the Classified Documents',
      "content":
          'The Justice Department is scrutinizing how both former President Donald J. Trump and President Biden came to have classified records after they left office.'
    },
    {
      "title": 'History of India Po...',
      "lastSeen": '24 hours ago',
      "videoDuration": '2hrs',
      "contentHeading": '5.E By the dry heart of empire',
      "content":
          'What was life like in the heart of the Chaulkiya empire? How did they survive in such a dry environment? How was the city defended? In this episode, we chat with Dr Hemanth Kadambi'
    },
    {
      "title": 'Elon Musk Podcast',
      "lastSeen": '2 mins ago',
      "videoDuration": '12mins',
      "contentHeading": 'HUGE Twitter Update: Elon Musk to introduce',
      "content":
          'Twitter CEO Elon Musk has confirmed that the character limit for tweets will increase from 280 to 4,000 characters early next month.'
    },
    {
      "title": '3 Things',
      "lastSeen": '11 hours ago',
      "videoDuration": '20mins',
      "contentHeading": 'Ozone layer slowly heals, RRR song wins...',
      "content":
          'First, Indian Express’ Amitabh Sinha explains how the Ozone layer is slowly healing, and what had caused it to deplete. Next, Indian Express'
    },
    {
      "title": 'The Daily',
      "lastSeen": '24 hours ago',
      "videoDuration": '2hrs',
      "contentHeading": 'The Presidents and the Classified Documents',
      "content":
          'The Justice Department is scrutinizing how both former President Donald J. Trump and President Biden came to have classified records after they left office.'
    },
    {
      "title": 'History of India Po...',
      "lastSeen": '24 hours ago',
      "videoDuration": '2hrs',
      "contentHeading": '5.E By the dry heart of empire',
      "content":
          'What was life like in the heart of the Chaulkiya empire? How did they survive in such a dry environment? How was the city defended? In this episode, we chat with Dr Hemanth Kadambi'
    }
  ];

  Widget _renderPlayBtn(String? text) {
    return Container(
      width: 75.0,
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          color: ColorUtils.primary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: ColorUtils.primary, width: 1.5)),
      child: Row(
        children: [
          const Icon(
            Icons.play_circle,
            size: 25.0,
            color: ColorUtils.primary,
          ),
          const SizedBox(width: 4.0),
          Text(text!,
              style: TextStyle(
                  color: ColorUtils.primary,
                  fontSize: FontUtils.fs10,
                  fontWeight: FontUtils.fw600))
        ],
      ),
    );
  }

  Widget _renderContent(Map<String, dynamic> item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item['contentHeading'],
          style:
              TextStyle(fontSize: FontUtils.fs15, fontWeight: FontUtils.fwBold),
        ),
        const SizedBox(height: 8.0),
        Text(
          item['content'],
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
      appBar: AppBarWidget(
        elevation: 0.0,
        title: 'Podcast',
        actionsWidget: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt_sharp))
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
                titleWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item['title'],
                      style: TextStyle(
                          fontWeight: FontUtils.fwBold,
                          fontSize: FontUtils.fs17),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          size: 15.0,
                          color: ColorUtils.font.withOpacity(0.6),
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          item['lastSeen'],
                          style: TextStyle(
                              color: ColorUtils.font.withOpacity(0.6),
                              fontSize: FontUtils.fs12),
                        ),
                      ],
                    ),
                  ],
                ),
                leadings: AvatarWidget(
                  backgroundColor:
                      (color['avatarColor'] as Color).withOpacity(0.1),
                  child: Text(
                    item['title'].toString().substring(0, 1),
                    style: TextStyle(
                        color: color['avatarColor'],
                        fontWeight: FontUtils.fwBold,
                        fontSize: FontUtils.fs18),
                  ),
                ),
                actions: _renderPlayBtn(item['videoDuration']),
                content: _renderContent(item),
                borderTheme: color['avatarColor'],
              );
            }),
      ),
    );
  }
}
