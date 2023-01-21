import 'package:college_bag/pages/login_page.dart';
import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
            margin: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Our mission is to \ninterview you instantly",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      height: 1.2,
                      fontSize: 32,
                      fontWeight: FontUtils.fwBold,
                      color: ColorUtils.white),
                ),
                const SizedBox(height: 12.0),
                Text(
                  "Companies apply to you and get direct access to hiring managers.",
                  style: TextStyle(
                      color: ColorUtils.white, fontSize: FontUtils.fs18),
                ),
                const SizedBox(height: 22.0),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage())),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorUtils.white,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                          color: ColorUtils.primary,
                          fontSize: FontUtils.fs16,
                          fontWeight: FontUtils.fwBold),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
