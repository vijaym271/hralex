import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import '../pages/view_score_page.dart';
import '../utils/color_utils.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  double value = 70.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/graph-bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Text("HRAlex Score",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          // const Text("way to reach"),
          const SizedBox(height: 12),
          Stack(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/user-ic.png"),
                  ),
                ),
              ),
              Center(
                child: Container(
                    padding: const EdgeInsets.only(
                        left: 18, right: 18, top: 4, bottom: 8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFDBFCFF), //New
                          blurRadius: 1.0,
                          spreadRadius: 2,
                          offset: Offset(
                            1,
                            1,
                          ),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.only(top: 135),
                    child: const Text(
                      "700 / 999 ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )),
              ),
              Center(
                child: SizedBox(
                    height: 160,
                    child: Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: AnimatedRadialGauge(
                          duration: const Duration(seconds: 2),
                          curve: Curves.linear,
                          value: value,
                          progressBar: const GaugeRoundedProgressBar(
                              color: Colors.transparent),
                          axis: GaugeAxis(
                              segments: const [
                                GaugeSegment(
                                    from: 0, to: 15, color: Color(0xFFD93551)),
                                GaugeSegment(
                                    from: 15, to: 40, color: Color(0xFFFA704E)),
                                GaugeSegment(
                                    from: 40, to: 65, color: Color(0xFFFDC50A)),
                                GaugeSegment(
                                    from: 65, to: 85, color: Color(0xFF34C177)),
                                GaugeSegment(
                                    from: 85,
                                    to: 100,
                                    color: Color(0xFF239480)),
                              ],
                              min: 0,
                              max: 100,
                              degrees: 180,
                              style: const GaugeAxisStyle(
                                  thickness: 20,
                                  background: Color(0xFFDFE2EC),
                                  blendColors: false),
                              pointer: CirclePointer(
                                  radius: 12,
                                  border: const GaugePointerBorder(
                                      color: Colors.white, width: 6.0),
                                  backgroundColor: Colors.transparent)),
                        ))),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Center(
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ColorUtils.dullraisedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewScorePage()),
                  );
                },
                child: const Text(
                  'View Score',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
