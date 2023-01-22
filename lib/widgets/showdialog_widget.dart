import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showModalPopup(BuildContext context, heading,
    {Widget? content, bool hideOk = false}) async {
  final Uri toLaunch = Uri(scheme: 'https', host: 'www.hralex.com', path: '');

  Future<void> launchInWebViewWithoutDomStorage(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableDomStorage: false),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(heading),
      content: content ??
          SizedBox(
            height: 100,
            child: Column(
              children: [
                const Text(
                    "Please use a web browser link for editing your profile, it's more user friendly. "),
                InkWell(
                    child: const Text('Open Browser'),
                    onTap: () => launchInWebViewWithoutDomStorage(toLaunch)),
              ],
            ),
          ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        Visibility(
          visible: !hideOk,
          child: TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ),
      ],
    ),
  );
}
