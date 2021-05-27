import 'package:amemais/Screens/Home/components/cuidados_com_amae.dart';
import 'package:amemais/Screens/Home/components/mamada_concluida.dart';
import 'package:amemais/Screens/Home/components/vamos_amamentar.dart';
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
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(60)),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(20)),
            VamosAmamentar(),
            SizedBox(height: getProportionateScreenWidth(20)),
            MamadaConcluida(),
            SizedBox(height: getProportionateScreenWidth(20)),
            CuidadosComAMae(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
