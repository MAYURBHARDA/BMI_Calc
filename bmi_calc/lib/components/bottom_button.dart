import 'package:bmi_calc/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Widget child;
  const BottomButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomButtonContainerHeight,
      color: Colors.pink[600],
      child: child,
    );
  }
}
