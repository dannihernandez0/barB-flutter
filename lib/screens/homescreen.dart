import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/headerFull.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      // Large screens (tablet on landscape mode, desktop, TV)
/******************************************************************************/
      if (constraints.maxWidth > 600) {
        return Row(children: [
          //left side column
          Column(
            children: [
              //Header Widget
              //IT WORKS
              HeaderFull(widthhh: constraints, title: 'Home'),

              //MIDDLE SECTION
              HomeLarge(width: constraints, height: 500),
              //Footer Widget
              FooterFull(widthhh: constraints, title: 'Home'),
            ],
          ),
          MenuWidget(widthhh: constraints, heightttt: constraints)
        ]);
      }
/******************************************************************************** */
      // Samll screens
      return Column(
        children: [
          HeaderSmall(),
          MenuCardSmall(),
          FooterSmall(
            heightttt: constraints,
          ),
        ],
      );
    }));
  }
}
