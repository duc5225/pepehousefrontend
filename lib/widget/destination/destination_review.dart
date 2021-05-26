import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pepetravel/models/destination.dart';

import '../../config.dart';

class DestinationReview extends StatelessWidget {
  final Destination destination;
  const DestinationReview(this.destination);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Xếp hạng và đánh giá',
            style:
                TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destination.reviews.length,
            itemBuilder: (BuildContext context, int index) {
              String review = destination.reviews[index];
              return Container(
                margin: EdgeInsets.all(10),
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  elevation: 5.0,
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '"' + review + '"',
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              IgnorePointer(
                                child: RatingBar.builder(
                                  itemSize: 20,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
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
                          Positioned(
                            child: Text(
                              'Bắn tinh man',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            bottom: 20,
                            right: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
