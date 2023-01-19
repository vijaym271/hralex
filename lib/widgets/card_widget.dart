import 'package:college_bag/utils/color_utils.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    this.content,
    this.leadings,
    this.actions,
    this.titleWidget,
    this.borderTheme = ColorUtils.white,
  });

  final Widget? content;
  final Widget? leadings;
  final Widget? actions;
  final Widget? titleWidget;
  final Color borderTheme;

  Widget _renderHeader() {
    return Row(
      children: [
        leadings ?? const SizedBox(),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.only(left: 12.0), child: titleWidget),
        ),
        actions ?? const SizedBox()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
              color: ColorUtils.white,
              // border: Border(bottom: BorderSide(color: borderTheme)),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: ColorUtils.grey.withOpacity(0.2),
                    blurRadius: 6.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0.0, 3.0))
              ]),
          child: Column(
            children: [
              _renderHeader(),
              content != null
                  ? const Divider(
                      color: ColorUtils.boxShadow,
                      height: 18.0,
                    )
                  : Container(),
              content ?? Container(),
            ],
          ),
        ),
        Positioned(
          bottom: 9.0,
          right: 28.0,
          child: Container(
            width: 38.0,
            height: 5.0,
            decoration: BoxDecoration(
                color: borderTheme, borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
      ],
    );
  }
}
