import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Thêm nhà',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Thông tin'),
              Tab(text: 'Ảnh'),
              Tab(text: 'Xác nhận')
            ],
          ),
        ),
        body: TabBarView(children: [
          Text('data'),
          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Text('Thêm ảnh'),
              ),
            ),
          ]),
          Text('data')
        ]),
      ),
    );
  }
}
