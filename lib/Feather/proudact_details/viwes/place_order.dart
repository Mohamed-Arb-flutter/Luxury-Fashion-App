import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/Heder.dart';
import 'package:store_app/Core/utils/text_style.dart';
import 'package:store_app/Core/widghts/custom_App_bar.dart';
import 'package:store_app/Feather/proudact_details/viwes/wights/cusstom_buttom.dart';
import 'package:store_app/Feather/proudact_details/viwes/wights/custtom_cont.dart';

class PlaceOrder extends StatelessWidget {
  final String title, image, dis;
  final int qty, total, price;
  const PlaceOrder({
    super.key,
    required this.title,
    required this.image,
    required this.dis,
    required this.qty,
    required this.total,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isblakk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heder(title: "Checkout"),
            customText(
              text: "Shipping adress".toUpperCase(),
              color: Colors.black38,
              fontsize: 17,
            ),
            Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                        text: "Iris Watson".toUpperCase(),
                        color: Colors.black,
                        fontsize: 17,
                      ),
                      Gap(10),
                      customText(
                        text: "606-3727 Ullamcorper. Street",
                        color: Colors.black87,
                        fontsize: 17,
                      ),
                      Gap(5),
                      customText(
                        text: "Roseville NH 11523",
                        color: Colors.black87,
                        fontsize: 17,
                      ),
                      Gap(5),
                      customText(
                        text: "(786) 713-8616",
                        color: Colors.black87,
                        fontsize: 17,
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
                ],
              ),
            ),
            Gap(10),
            CusttomCont(
              text: "Add shipping adress",
              icon: Icons.add,
              istest: false,
            ),
            Gap(50),
            customText(
              text: "Shipping Method".toUpperCase(),
              color: Colors.black87,
            ),
            Gap(10),
            CusttomCont(
              text: "Pickup at store",
              icon: Icons.keyboard_arrow_down_sharp,
              istest: true,
            ),
            Gap(50),
            customText(
              text: "Payment method".toUpperCase(),
              color: Colors.black87,
            ),
            Gap(10),
            CusttomCont(
              text: "select payment method",
              icon: Icons.keyboard_arrow_down_sharp,
              istest: false,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(text: "Total".toUpperCase(), color: Colors.black),
                customText(
                  text: "\$ ${total}",
                  color: Colors.red.shade200,
                  fontsize: 21,
                ),
              ],
            ),
            Gap(10),
            CusstomButtom(text: "Place order", ch: true, onTap: () {}),
            Gap(10)
          ],
        ),
      ),
    );
  }
}
