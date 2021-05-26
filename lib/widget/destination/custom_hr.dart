import 'package:flutter/material.dart';

class CustomHr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Expanded(
        child: Divider(
          color: Colors.grey,
          height: 20,
          thickness: 0.4,
        ),
      ),
    );
  }
}
