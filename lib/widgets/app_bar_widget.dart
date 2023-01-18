import 'package:college_bag/utils/color_utils.dart';
import 'package:college_bag/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {Key? key,
      this.title = '',
      this.titleStyle,
      this.leadingWidget,
      this.actionsWidget,
      this.elevation = 0.5,
      this.height = 50.0,
      this.backgroundColor = ColorUtils.white,
      this.width = double.infinity})
      : super(key: key);

  final String title;
  final TextStyle? titleStyle;
  final Widget? leadingWidget;
  final List<Widget>? actionsWidget;
  final double elevation;
  final double width;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    String? currentRoute = ModalRoute.of(context)?.settings.name;
    print('appbar currentRoute -->${currentRoute}');
    return AppBar(
      title: Text(
        title,
        style: titleStyle ?? const TextStyle(color: ColorUtils.font),
      ),
      centerTitle: true,
      leading: leadingWidget ??
          (currentRoute == '/'
              ? const ProfileWidget()
              : IconButton(
                  onPressed: () {
                    // ['/jobs', '/career', '/podcast', '/more'].contains(currentRoute)
                    // ? Navigator.pushNamedAndRemoveUntil(
                    //         context, '/', ModalRoute.withName('/'))
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                )),
      actions: actionsWidget,
      elevation: elevation,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => Size(width, height);
}
