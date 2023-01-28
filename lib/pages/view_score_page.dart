import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewScorePage extends StatefulWidget {
  ViewScorePage({Key? key}) : super(key: key);

  @override
  State<ViewScorePage> createState() => _ViewScorePageState();
}

class _ViewScorePageState extends State<ViewScorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.scaffold,
      appBar: AppBarWidget(
        title: 'View Score',
        elevation: 0.0,
        actionsWidget: [
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bell))
        ],
      ),
    );
  }
}
