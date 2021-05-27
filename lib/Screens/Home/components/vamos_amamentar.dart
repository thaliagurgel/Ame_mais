import 'package:flutter/material.dart';
import 'package:amemais/components/product_card.dart';
import 'package:amemais/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class VamosAmamentar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: SectionTitle(title: "VamosAmamentar ?", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts1.length,
                (index) {
                  if (demoProducts1[index].isPopular)
                    return ProductCard(product: demoProducts1[index]);

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
