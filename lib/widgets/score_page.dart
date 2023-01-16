import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class ScorePage extends StatefulWidget {
  ScorePage({Key? key}) : super(key: key);

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
          image: AssetImage("../../assets/images/graph-bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text("HRAlex Score",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          Text("way to reach"),
          SizedBox(height: 12),
          Stack(
            children: [
              SizedBox(
                  height: 120,
                  child: Container(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
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
                                  thickness: 18,
                                  background: Color(0xFFDFE2EC),
                                  blendColors: false),
                              pointer: CirclePointer(
                                  radius: 12,
                                  border: const GaugePointerBorder(
                                      color: Colors.white, width: 6.0),
                                  backgroundColor: Colors.transparent)),
                        ),
                      ))),
            ],
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
