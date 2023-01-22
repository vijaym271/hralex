import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/utils/font_utils.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.0,
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          color: ColorUtils.primary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: ColorUtils.primary, width: 1.5)),
      child: Row(
        children: [
          const Icon(
            Icons.play_circle,
            size: 25.0,
            color: ColorUtils.primary,
          ),
          const SizedBox(width: 4.0),
          Text(text!,
              style: TextStyle(
                  color: ColorUtils.primary,
                  fontSize: FontUtils.fs10,
                  fontWeight: FontUtils.fw600))
        ],
      ),
    );
  }
}
