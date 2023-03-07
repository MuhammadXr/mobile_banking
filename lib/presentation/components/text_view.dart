

import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({Key? key, required this.text, required this.fontWeight, required this.textColor, required this.textSize, required this.textAlign}) : super(key: key);
final String text;final FontWeight fontWeight;final Color textColor;
final double textSize;final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(
      fontWeight: fontWeight,
      color: textColor,
      fontSize: textSize,
      fontFamily: 'Dmsans'
    ),textAlign: textAlign);
  }
}
