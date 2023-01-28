import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventPage extends StatefulWidget {
  EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
    );
  }
}
