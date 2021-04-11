import 'package:flutter/material.dart';
import 'package:social_ui_pesa/model/user_model.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final int count;

  ItemWidget({this.title, this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
