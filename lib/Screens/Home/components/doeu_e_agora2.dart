import 'package:flutter/material.dart';
import 'package:amemais/components/product_card.dart';
import 'package:amemais/models/Product.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class DoeueAgora2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: SectionTitle(title: "", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        // SizedBox(height: getProportionateScreenWidth(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts5.length,
                (index) {
                  if (demoProducts5[index].isPopular)
                    return ProductCard(product: demoProducts5[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(50)),
            ],
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(50)),
      ],
    );
  }
}
