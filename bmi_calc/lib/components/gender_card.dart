import 'package:flutter/material.dart';

import '../constant.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const GenderCard({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kInActiveCardColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: 150,
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 80,
          ),
          Text(
            title,
            style: kGenderCardTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
