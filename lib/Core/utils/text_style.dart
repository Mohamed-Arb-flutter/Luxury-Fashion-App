import 'package:flutter/material.dart';

class customText extends StatelessWidget {
  const customText({
    super.key,
     this.fontsize = 16,
     this.color = Colors.white,
    required this.text,
     this.weight = FontWeight.normal,
     this.Max=1,
     this.hight=1
  });
  final double fontsize;
  final Color color;
  final String text;
  final int Max;
  final double hight;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: Max,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: "Tenor_Sans",
        height: hight,
        fontWeight: weight,
      ),
    );
  }
}
