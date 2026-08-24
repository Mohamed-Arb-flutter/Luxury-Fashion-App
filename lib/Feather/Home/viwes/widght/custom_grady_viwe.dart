import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/text_style.dart';
import 'package:store_app/Feather/Home/data/model/proudact_model.dart';
import 'package:store_app/Feather/proudact_details/viwes/Checkout.dart';

class CustomGradyViwe extends StatelessWidget {
  const CustomGradyViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: ProudactModel.proudact.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
        childAspectRatio: 0.53,
      ),
      itemBuilder: (context, index) {
        final item = ProudactModel.proudact[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Checkout(
                name: item.name,
                image: item.image,
                price: item.price,
                des: item.des,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.image),
              Gap(10),
              customText(text: item.name),

              customText(text: item.des, color: Colors.grey),
              Gap(9),
              customText(
                text: "\$ ${item.price.toString()}",
                color: Colors.red.shade200,
                fontsize: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}
