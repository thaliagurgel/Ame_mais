import 'package:flutter/material.dart';
import 'package:amemais/components/product_card.dart';
import 'package:amemais/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class CuidadosComAMae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: SectionTitle(title: "Cuidados com a mãe", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts3.length,
                (index) {
                  if (demoProducts3[index].isPopular)
                    return ProductCard(product: demoProducts3[index]);

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
