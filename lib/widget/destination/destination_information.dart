import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pepetravel/config.dart';
import 'package:pepetravel/main.dart';
import 'package:pepetravel/models/destination.dart';

class DestinationInformation extends StatelessWidget {
  final Destination destination;
  DestinationInformation(this.destination);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            destination.name,
            style:
                TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              IgnorePointer(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.green,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () => {},
                  child: Text(
                    destination.type,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              IgnorePointer(
                child: RatingBar.builder(
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                  initialRating: 3.5,
                  minRating: 0.1,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.location_on,
                    size: 18,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: ' ' + destination.adress,
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.local_phone,
                    size: 18,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: ' ' + destination.phoneNumber.toString(),
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
