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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          Text("way to reach"),
          SizedBox(height: 12),
          Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage("assets/images/user-ic.png"),
                  ),
                ),
              ),
              Center(
                child: Container(
                    padding:
                        EdgeInsets.only(left: 18, right: 18, top: 4, bottom: 8),
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
                    margin: EdgeInsets.only(top: 115),
                    child: Text(
                      "70",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )),
              ),
              Center(
                child: Container(
                  child: SizedBox(
                      height: 160,
                      child: Container(
                          padding: const EdgeInsets.only(left: 25, right: 25),
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
                                        from: 0,
                                        to: 15,
                                        color: Color(0xFFD93551)),
                                    GaugeSegment(
                                        from: 15,
                                        to: 40,
                                        color: Color(0xFFFA704E)),
                                    GaugeSegment(
                                        from: 40,
                                        to: 65,
                                        color: Color(0xFFFDC50A)),
                                    GaugeSegment(
                                        from: 65,
                                        to: 85,
                                        color: Color(0xFF34C177)),
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
                            ),
                          ))),
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
