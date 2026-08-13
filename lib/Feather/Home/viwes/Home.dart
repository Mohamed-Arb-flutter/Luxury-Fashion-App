import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:store_app/Core/utils/text_style.dart';
import 'package:store_app/Core/widghts/custom_App_bar.dart';

import 'package:store_app/Feather/Home/viwes/About.dart';
import 'package:store_app/Feather/Home/viwes/widght/custom_grady_viwe.dart';
import 'package:store_app/Feather/Home/viwes/widght/custom_list_viwe.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: CustomAppBar(isblakk: true),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            right: 0,
            left: 0,
            child: SvgPicture.asset(
              "assets/texts/10.svg",
              height: 163,
              width: 200,
            ),
          ),
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: SvgPicture.asset("assets/texts/October.svg", width: 200),
          ),
          Positioned(
            top: 90,
            right: 0,
            left: 0,
            child: SvgPicture.asset("assets/texts/Collection.svg", width: 200),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Gap(120),
                  Image.asset("assets/cover/cover1.png"),
                  Gap(20),
                  CustomGradyViwe(),
                  Gap(5),
                  customText(
                    text: "You may also like".toUpperCase(),
                    fontsize: 26,
                  ),
                  Gap(10),
                  Image.asset("assets/svgs/line.png", width: 190),
                  Gap(40),
                  CustomListViwe(),
                  About(),
                  Gap(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
