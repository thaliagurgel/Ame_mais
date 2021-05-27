import 'package:flutter/material.dart';
import 'package:amemais/components/coustom_bottom_nav_bar.dart';
import 'package:amemais/enums.dart';
import '../../size_config.dart';
import 'components/intercorrencias_body.dart';

class IntercorrenciasScreen extends StatelessWidget {
  static String routeName = "/intercorrencias";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
