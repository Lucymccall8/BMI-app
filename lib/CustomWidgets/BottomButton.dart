import 'package:flutter/material.dart';
import '../Constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        color: kBottomBarColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomBarHeight,
      ),
    );
  }
}