import 'package:amemais/Screens/Home/components/cuidados_com_amae.dart';
import 'package:amemais/Screens/Home/components/doeu_e_agora.dart';
import 'package:amemais/Screens/Home/components/doeu_e_agora2.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'package:amemais/Screens/Login/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(40)),
            DoeueAgora(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DoeueAgora2(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
