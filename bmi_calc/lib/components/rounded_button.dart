import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;

  const RoundedButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28.0,
      backgroundColor: Colors.grey.shade800,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
