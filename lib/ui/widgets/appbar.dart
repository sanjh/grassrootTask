import 'package:flutter/material.dart';
import 'package:ui_task/const/images_const.dart';

import '../../const/colors_const.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      iconTheme: const IconThemeData(color: Colors.black87),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.notifications_none),
        onPressed: () {},
      ),
      actions: const <Widget>[
        CircleAvatar(
          radius: 12,
          backgroundColor: borderColor,
          backgroundImage: AssetImage(profileImage),
        ),
        SizedBox(
          width: 7,
        )
      ],
    );
  }
}
