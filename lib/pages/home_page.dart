import 'package:college_bag/pages/jobs_page.dart';
import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:college_bag/widgets/notification_card_widget.dart';
import 'package:college_bag/widgets/upcoming_events_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/score_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget scoreHrAlex() {
    return ScorePage();
  }

  Widget cardHeader({required String title, bool enableViewAll = true}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, right: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontUtils.fw600),
          ),
          Visibility(
            visible: enableViewAll,
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JobsPage()));
                },
                child: const Text(
                  'View all',
                  style: TextStyle(color: ColorUtils.blue),
                )),
          )
        ],
      ),
    );
  }

  Widget renderNotifications() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        cardHeader(title: 'Notification', enableViewAll: true),
        SizedBox(
          height: 120.0,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return NotificationCard(
                  index: index,
                  icon: Icons.notification_add,
                );
              }),
        )
      ],
    );
  }

  Widget renderUpcomingEvents() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        cardHeader(title: 'Upcoming Events', enableViewAll: true),
        SizedBox(
          height: 120.0,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return UpcomingEventsCard(
                  index: index,
                );
              }),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.scaffold,
      appBar: AppBarWidget(
        title: 'Home',
        elevation: 0.0,
        actionsWidget: [
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bell))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 14.0),
        child: ListView(
          children: [
            scoreHrAlex(),
            const SizedBox(
              height: 18.0,
            ),
            renderNotifications(),
            const SizedBox(
              height: 20.0,
            ),
            renderUpcomingEvents(),
          ],
        ),
      ),
    );
  }
}
