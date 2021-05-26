import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../config.dart';
import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Colors.green,
              Colors.lightGreenAccent,
            ])),
            child: Container(
              child: Column(
                children: [
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      appName,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomListTile('Điểm đến', Icons.location_on),
          CustomListTile('Chuyến đi', Icons.airplanemode_active),
          CustomListTile('Bảng tin', Icons.article_outlined),
        ],
      ),
    );
  }
}
