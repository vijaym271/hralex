import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:college_bag/widgets/avatar_widget.dart';
import 'package:college_bag/widgets/card_widget.dart';
import 'package:college_bag/widgets/play_btn_widget.dart';
import 'package:college_bag/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class PodcastDetails extends StatefulWidget {
  const PodcastDetails({super.key, this.details, this.borderTheme});
  final Map<String, dynamic>? details;
  final Color? borderTheme;

  @override
  State<PodcastDetails> createState() => _PodcastDetailsState();
}

class _PodcastDetailsState extends State<PodcastDetails> {
  late Map<String, dynamic> item;
  late Color? color;

  @override
  void initState() {
    super.initState();
    item = widget.details!;
    color = widget.borderTheme!;
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

  Widget _renderSummary() {
    return CardWidget(
      titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item['title'],
            style: TextStyle(
                fontWeight: FontUtils.fwBold, fontSize: FontUtils.fs17),
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
        backgroundColor: (color as Color).withOpacity(0.1),
        child: Text(
          item['title'].toString().substring(0, 1),
          style: TextStyle(
              color: color!,
              fontWeight: FontUtils.fwBold,
              fontSize: FontUtils.fs18),
        ),
      ),
      actions: PlayButton(text: item['videoDuration']),
      content: _renderContent(item),
      borderTheme: color!,
    );
  }

  Widget _renderNotes() {
    return const Center(child: Text('Notes'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        elevation: 0.0,
        title: 'Podcast Details',
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TabBarWidget(
          tabs: const ['Summary', 'Notes'],
          tabViews: [_renderSummary(), _renderNotes()],
        ),
      ),
    );
  }
}
