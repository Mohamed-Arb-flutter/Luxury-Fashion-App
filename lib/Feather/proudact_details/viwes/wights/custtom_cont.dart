import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/text_style.dart';

class CusttomCont extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool istest;
  const CusttomCont({
    super.key,
    required this.text,
    required this.icon,
    required this.istest,
  });

  @override
  Widget build(BuildContext context) {
    bool test = istest;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customText(text: text, color: Colors.black87),
          Gap(20),
          test ? customText(text: "Free",color: Colors.black87,fontsize: 20,) : Text(""),
          Icon(icon),
        ],
      ),
    );
  }
}
