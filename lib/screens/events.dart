import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/headerFull.dart';
//DONE
// ignore: must_be_immutable
Color barBBlack = Colors.black87;

//
class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Large screens (tablet on landscape mode, desktop, TV)
/******************************************************************************/
          if (constraints.maxWidth > 600) {
            return Row(children: [
              //left side column
              Column(
                children: [
                  HeaderFull(widthhh: constraints, title: 'EVENTS'),

                  //MIDDLE SECTION
                  EventWidget(
                    widthhh: constraints,
                  ),
//footer
                  FooterFull(widthhh: constraints),
                  //right size column
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
              EventWidgetSmall(),

              FooterSmall(heightttt: constraints,),
            ],
          );
        },
      ),
    );
  }
}
