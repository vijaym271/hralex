import 'package:college_bag/layouts/user_layout.dart';
import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _renderBtn({String? imgUrl, String? text}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const UserLayout()),
        );
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
            color: ColorUtils.white,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: ColorUtils.borderBlue)),
        child: Row(
          children: [
            Image(height: 28, width: 28, image: AssetImage(imgUrl!)),
            const SizedBox(width: 14.0),
            Text(
              'Login with $text',
              style: TextStyle(
                  fontWeight: FontUtils.fwBold, fontSize: FontUtils.fs16),
            )
          ],
        ),
      ),
    );
  }

  Widget _renderTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome!',
          style: TextStyle(
              fontSize: FontUtils.fs32,
              fontWeight: FontUtils.fwBold,
              color: ColorUtils.black),
        ),
        const SizedBox(height: 4.0),
        Text(
          "HRAlex supports everything you need to crack your Interview",
          style: TextStyle(fontSize: FontUtils.fs22),
        ),
        const SizedBox(height: 8.0),
        Container(
          width: 32.0,
          height: 8.0,
          color: ColorUtils.profilePrograBar,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: height / 4 - 100),
                  _renderTitle(),
                  const SizedBox(height: 30.0),
                  _renderBtn(
                      imgUrl: 'assets/images/google_ic.png', text: 'Google'),
                  const SizedBox(height: 15.0),
                  _renderBtn(
                      imgUrl: 'assets/images/micr_ic.png', text: 'Microsoft'),
                  const SizedBox(height: 15.0),
                  _renderBtn(
                      imgUrl: 'assets/images/face_ic.png', text: 'Facebook'),
                  const SizedBox(height: 15.0),
                  _renderBtn(
                      imgUrl: 'assets/images/apple_ic.png', text: 'Apple'),
                  const SizedBox(height: 15.0),
                ]),
          ),
        ),
      ),
    );
  }
}
