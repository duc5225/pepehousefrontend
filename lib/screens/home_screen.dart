import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:pepetravel/config.dart';
import 'package:pepetravel/screens/login_screen.dart';
import 'package:pepetravel/widget/city_carousel.dart';
import 'package:pepetravel/widget/destination_carousel.dart';
import 'package:http/http.dart';

import '../appbar/custom_drawer.dart';
import '../appbar/base_app_bar.dart';
import 'form_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = -1;
  List<IconData> _icons = [
    Icons.local_hotel,
    Icons.local_dining_outlined,
    Icons.camera_alt,
    Icons.airplanemode_active_outlined
  ];

  List<String> _iconText = ['Nghỉ ngơi', 'Ăn uống', 'Tham quan', 'Chuyến đi'];
  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: FractionallySizedBox(
          widthFactor: 0.47,
          child: Container(
            width: 180,
            height: 50,
            decoration: BoxDecoration(
              color: _selectedIndex == index
                  ? Theme.of(context).accentColor
                  : Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  _icons[index],
                  size: 25,
                  color: _selectedIndex == index
                      ? Theme.of(context).primaryColor
                      : Colors.black38,
                ),
                Text(
                  _iconText[index],
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: CustomDrawer(),
        appBar: BaseAppBar(AppBar(), appName),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 10,
              ),
              CityCarousel(),
              DestinationCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}
