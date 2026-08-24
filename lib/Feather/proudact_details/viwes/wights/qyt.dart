import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Qyt extends StatelessWidget {
  const Qyt({super.key, required this.image, this.onTap});
  final void Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400, width: 1),
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
