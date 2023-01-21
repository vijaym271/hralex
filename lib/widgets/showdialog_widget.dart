import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showModalLoader(BuildContext context, heading,
    {Widget? content}) async {
  Future<void>? _launched;
  final Uri toLaunch = Uri(scheme: 'https', host: 'www.hralex.com', path: '');
  Future<void> _launchInWebViewWithoutDomStorage(Uri url) async {
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
          Container(
            height: 100,
            child: Column(
              children: [
                const Text(
                    "Please use a web browser link for editing your profile, it's more user friendly. "),
                InkWell(
                    child: const Text('Open Browser'),
                    onTap: () => _launched =
                        _launchInWebViewWithoutDomStorage(toLaunch)),
                // TextButton(
                //     onPressed: () {
                //       onTap:
                //       () {
                //         Clipboard.setData(new ClipboardData(text: "Your Copy text"))
                //             .then((_) {
                //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //               content: Text('Copied to your clipboard !')));
                //         });
                //       };
                //     },
                //     child: Text("data"))
              ],
            ),
          ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
