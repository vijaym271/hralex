import 'package:flutter/material.dart';

import '../pages/more_page.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(9.0),
        child: IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MorePage()),
            );
          },
          icon: const CircleAvatar(
            radius: 18,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user-ic.png"),
            ),
          ),
        ));
  }
}
