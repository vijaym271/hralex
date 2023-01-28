import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  List<Map<String, dynamic>> profileDetails = [
    {
      "icon": "assets/images/first_name_ic.png",
      "label": 'First Name',
      "text": "John"
    },
    {
      "icon": "assets/images/last_name_ic.png",
      "label": 'Last Name',
      "text": "Smith"
    },
    {
      "icon": "assets/images/mobile_ic.png",
      "label": 'Mobile No',
      "text": "7667705522"
    },
    {
      "icon": "assets/images/email_ic.png",
      "label": 'Email',
      "text": "jai@gmail.com"
    },
    {
      "icon": "assets/images/current-location.png",
      "label": 'Current Location',
      "text": "Current Location"
    },
  ];

  Widget _renderProfileImage() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12.0),
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/graph-bg.png'),
      )),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(6.0), // Border width
            decoration: BoxDecoration(
                color: ColorUtils.white,
                borderRadius: BorderRadius.circular(50)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48), // Image radius
                child:
                    Image.asset('assets/images/user-ic.png', fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'John Smith',
            style: TextStyle(
                fontSize: FontUtils.fs18, fontWeight: FontUtils.fw600),
          )
        ],
      ),
    );
  }

  Widget _renderLogOut() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: ColorUtils.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30.0)),
      child: Text(
        'Logout',
        style: TextStyle(
            color: ColorUtils.primary,
            fontSize: FontUtils.fs16,
            fontWeight: FontUtils.fwBold),
      ),
    );
  }

  Widget _renderField(Map<String, dynamic> data) {
    return Row(
      children: [
        Image(
          image: AssetImage(data['icon']),
          height: 35.0,
        ),
        const SizedBox(width: 8.0),
        Expanded(
            child: Text(
          data['label'],
          style: TextStyle(fontSize: FontUtils.fs14),
        )),
        Text(
          data['text'],
          style:
              TextStyle(fontWeight: FontUtils.fwBold, fontSize: FontUtils.fs14),
        ),
      ],
    );
  }

  Widget _renderProfileDetails() {
    return Container(
      height: 280,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: ColorUtils.white, borderRadius: BorderRadius.circular(10.0)),
      child: ListView.separated(
          itemBuilder: (context, index) => _renderField(profileDetails[index]),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: profileDetails.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Profile',
        actionsWidget: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt_sharp))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Column(children: [
          _renderProfileImage(),
          const SizedBox(height: 10.0),
          _renderProfileDetails(),
          Expanded(child: Container()),
          _renderLogOut(),
        ]),
      ),
    );
  }
}
