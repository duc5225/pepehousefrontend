import 'package:flutter/material.dart';
import 'package:pepetravel/widget/destination/custom_hr.dart';
import 'package:pepetravel/widget/destination/destination_information.dart';
import 'package:pepetravel/widget/destination/destination_image.dart';
import 'package:pepetravel/widget/destination/destination_review.dart';
import '../config.dart';
import '../models/destination.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen(this.destination);
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen>
    with TickerProviderStateMixin<DestinationScreen> {
  var isExpanded = false;
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 250,
                backgroundColor: Colors.green[400],
                titleSpacing: 0,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.destination.name,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      widget.destination.adress,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                pinned: true,
                forceElevated: true,
                flexibleSpace: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  // print('constraints=' + constraints.toString());
                  top = constraints.biggest.height;

                  return FlexibleSpaceBar(
                    background: Image.asset(
                      widget.destination.imageUrl[0],
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              )
            ];
          },
          body: ListView(
            children: [
              DestinationImage(widget.destination),
              DestinationInformation(widget.destination),
              CustomHr(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mô tả',
                          style: TextStyle(
                              fontSize: titleFontSize,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AnimatedSize(
                          vsync: this,
                          duration: const Duration(milliseconds: 200),
                          child: ConstrainedBox(
                            constraints: isExpanded
                                ? BoxConstraints()
                                : BoxConstraints(maxHeight: 60),
                            child: Text(
                              widget.destination.description,
                              style: TextStyle(fontSize: 16),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        widget.destination.description.length > 155
                            ? Center(
                                child: isExpanded
                                    ? GestureDetector(
                                        child: const Text(
                                          'Thu hẹp',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        onTap: () =>
                                            setState(() => isExpanded = false),
                                      )
                                    : GestureDetector(
                                        child: const Text(
                                          'Xem thêm',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        onTap: () =>
                                            setState(() => isExpanded = true),
                                      ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
              CustomHr(),
              DestinationReview(widget.destination),
              CustomHr(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vị trí',
                      style: TextStyle(
                          fontSize: titleFontSize, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      height: 200,
                    ),
                  ],
                ),
              ),
              CustomHr(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 55,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () => {},
                    child: Text(
                      'Thêm vào giỏ hàng',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
