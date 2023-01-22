import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:college_bag/widgets/showdialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileStatusCard extends StatefulWidget {
  const ProfileStatusCard({super.key});

  @override
  State<ProfileStatusCard> createState() => _ProfileStatusCardState();
}

class _ProfileStatusCardState extends State<ProfileStatusCard> {
  final Uri toLaunch = Uri(scheme: 'https', host: 'www.hralex.com', path: '');

  Widget _renderAvatar() {
    return DottedBorder(
      color: ColorUtils.appPurple.withOpacity(0.3),
      borderType: BorderType.Circle,
      strokeWidth: 3,
      radius: const Radius.circular(30.0),
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        width: 50.0,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
            color: ColorUtils.appPurple,
            borderRadius: BorderRadius.circular(30.0)),
        child: Text.rich(
          TextSpan(
              text: '55',
              style: TextStyle(fontSize: FontUtils.fs18),
              children: [
                TextSpan(
                    text: ' %',
                    style: TextStyle(
                        fontSize: FontUtils.fs10,
                        fontWeight: FontWeight.normal))
              ]),
          style: TextStyle(
              color: ColorUtils.white,
              fontSize: FontUtils.fs16,
              fontWeight: FontUtils.fwBold),
        ),
      ),
    );
  }

  Future<void> launchInWebViewWithoutDomStorage(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableDomStorage: false),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Widget _modalContent() {
    return SizedBox(
      height: 130,
      child: Column(
        children: [
          const Text(
              "Please use a web browser link for editing your profile, it's more user friendly. "),
          InkWell(
              child: const Text('Open Browser'),
              onTap: () => launchInWebViewWithoutDomStorage(toLaunch)),
          const SizedBox(height: 12.0),
          Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: 30.0,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0)),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Copy Link',
                    style: TextStyle(
                        color: ColorUtils.primary, fontSize: FontUtils.fs12),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _renderProgressBar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 4.0, top: 4.0),
          child: Text(
            'Profile completed',
            style: TextStyle(fontSize: FontUtils.fs13),
          ),
        ),
        LinearPercentIndicator(
          lineHeight: 8.0,
          barRadius: const Radius.circular(12.0),
          percent: 0.5,
          backgroundColor: ColorUtils.profilePrograBar.withOpacity(0.2),
          progressColor: ColorUtils.profilePrograBar,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0, top: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => showModalPopup(
                  context,
                  "Profile",
                  content: _modalContent(),
                  hideOk: true,
                ),
                child: Row(
                  children: [
                    Text(
                      'Update Profile',
                      style: TextStyle(
                          color: ColorUtils.primary,
                          fontWeight: FontUtils.fwBold,
                          fontSize: FontUtils.fs13),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: ColorUtils.primary,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: ColorUtils.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color: ColorUtils.boxShadow.withOpacity(0.2),
                blurRadius: 1.5,
                spreadRadius: 0.1,
                offset: const Offset(1, 2)),
          ]),
      child: Row(children: [
        _renderAvatar(),
        Expanded(child: _renderProgressBar(context))
      ]),
    );
  }
}
