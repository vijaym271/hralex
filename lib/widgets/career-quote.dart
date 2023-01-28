import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color_utils.dart';

class CareerQuote extends StatefulWidget {
  CareerQuote({Key? key}) : super(key: key);

  @override
  State<CareerQuote> createState() => _CareerQuoteState();
}

class _CareerQuoteState extends State<CareerQuote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
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
        Image.asset('assets/images/careers-img.png'),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/images/career-quotes.png',
            height: 40,
            width: 40,
          ),
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.all(8),
          child: Text(
            "I fear not the man who has practiced 10,000 kicks once, but I fear the man who has practiced one kick 10,000 times.",
            softWrap: true,
            style: GoogleFonts.bellota(
              textStyle: const TextStyle(
                  color: ColorUtils.font, letterSpacing: .9, fontSize: 21),
            ),
          ),
        ))
      ]),
    );
  }
}
