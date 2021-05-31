import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pepetravel/screens/login_screen.dart';
import '../config.dart';

class CustomDrawer extends StatelessWidget {
  Widget _buildListTile(
      String text, IconData icon, BuildContext context, Widget screen) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
        height: 65,
        child: InkWell(
          splashColor: Colors.lightGreenAccent,
          onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => screen))
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  Padding(padding: const EdgeInsets.all(7)),
                  Text(
                    text,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }

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
          _buildListTile('Đăng nhập', Icons.person, context, LoginScreen()),
          _buildListTile('Tìm nhà', Icons.house, context, LoginScreen()),
          _buildListTile(
              'Thông báo', Icons.article_outlined, context, LoginScreen()),
        ],
      ),
    );
  }
}
