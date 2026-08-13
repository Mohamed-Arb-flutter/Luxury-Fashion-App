import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons_plus/ionicons_plus.dart';
import 'package:store_app/Core/utils/text_style.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Ionicons.logo_twitter, color: Colors.white),
                          Gap(30),
                          Icon(Ionicons.logo_instagram, color: Colors.white),
                          Gap(30),
                          Icon(Ionicons.logo_facebook, color: Colors.white),
                        ],
                      ),
                      Gap(20),
                      Image.asset("assets/svgs/line.png", width: 190),
                      Gap(20),
                      customText(
                        hight: 2,
                        Max: 4,
                        text:
                            "Developer: Mohamed Ibrahim \n      Phone: 01023270183\n 'We are here to help you anytime. \n       Feel free to reach out!'",
                      ),
                      Gap(20),
                      Image.asset("assets/svgs/line.png", width: 190),
                      Gap(20),
                      customText(text: "About       Contact         Blog"),
                      Gap(25),
                      customText(
                        text: "Copyright© OpenUI All Rights Reserved.",
                      ),
                    ],
                  );
  }
}