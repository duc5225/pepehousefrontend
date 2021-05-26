import 'package:flutter/material.dart';
import 'package:pepetravel/models/destination.dart';

class DestinationImage extends StatelessWidget {
  final Destination destination;
  DestinationImage(this.destination);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Scrollbar(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: destination.imageUrl.length - 1,
          itemBuilder: (BuildContext context, int index) {
            index++;
            return Container(
              padding: EdgeInsets.all(3),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  image: AssetImage(destination.imageUrl[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
