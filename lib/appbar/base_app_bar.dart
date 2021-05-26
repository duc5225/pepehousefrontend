import 'package:flutter/material.dart';
import '../config.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String appBarText;
  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);

  const BaseAppBar(this.appBar, this.appBarText);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.green[400],
      title: Text(
        appBarText,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
      ),
    );
  }
}
