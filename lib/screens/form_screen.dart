import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  PickedFile file;
  var _nameController = TextEditingController();
  final _picker = ImagePicker();
  _chooseImage() async {
    file = await _picker.getImage(source: ImageSource.gallery);
  }

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
          Form(
            child: Column(
              children: [
                _buildTextField(_nameController, 'Name', Icons.person, false)
              ],
            ),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: GestureDetector(
                onTap: _chooseImage,
                child: DottedBorder(
                  dashPattern: [8, 8],
                  strokeWidth: 2,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 150),
                    child: Text(
                      'Thêm ảnh',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          Text('data')
        ]),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String field,
      IconData icon, bool obscure) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          field,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.white),
            obscureText: obscure,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15),
              prefixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              hintText: 'Enter your ' + field,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
