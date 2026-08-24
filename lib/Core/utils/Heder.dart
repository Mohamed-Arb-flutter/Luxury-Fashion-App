import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/text_style.dart';

class Heder extends StatelessWidget {
  const Heder({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: customText(
            text: title.toUpperCase(),
            color: Color(0xff111111),
            space: 10,
            fontsize: 25,
          ),
        ),
        Gap(5),
        Image.asset("assets/svgs/line.png", width: 190, color: Colors.black),
        Gap(20)
      ],
    );
  }
}
