import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/headerFull.dart';


///!!!MENU COMPLETE - full and small
// ignore: must_be_immutable
class Menu extends StatelessWidget {
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
              Column(children: [
                //HEADER SECTION
                HeaderFull(widthhh: constraints, title: 'MENU'),

                //////BODY PART
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 500,
                  width: constraints.maxWidth * 0.75,
                  //organizes the list of list views besides using column
                  child: ListView(
                    children: [
                      ///LIST OF MENU ITEMS
                      //domestics
                      MenuListBuilder(
                          type: domestics,
                          heightttt: constraints,
                          title: "DOMESTICS"),
                      //imports
                      MenuListBuilder(
                          type: imports,
                          heightttt: constraints,
                          title: "IMPORTS"),
                      //shots
                      MenuListBuilder(
                          type: shots, heightttt: constraints, title: "SHOTS"),
                      //margartitas
                      MenuListBuilder(
                          type: margaritas,
                          heightttt: constraints,
                          title: "MARGARITAS"),
                      ///////////////////
                      //martinis
                      MenuListBuilder(
                          type: martinis,
                          heightttt: constraints,
                          title: "MARTINIS"),
                      //Wine Glass
                      MenuListBuilder(
                          type: wineGlass,
                          heightttt: constraints,
                          title: "WINE GLASSES"),
                      //Wine Bottles
                      MenuListBuilder(
                          type: wineBottle,
                          heightttt: constraints,
                          title: "WINE BOTTLES"),
                    ],
                  ),
                ),
//FOOTER
                FooterFull(widthhh: constraints)
              ]),
              //right size column

              MenuWidget(widthhh: constraints, heightttt: constraints)
            ]);
          }
/******************************************************************************** */
          // Samll screens
          return Column(
            children: [
              HeaderSmall(),
              //////BODY PART
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: 500,
                //organizes the list of list views besides using column
                child: ListView(
                  children: [
                    //Second horizontal List

                    ///LIST OF MENU ITEMS
                    //domestics
                    MenuListBuilder(
                        type: domestics,
                        heightttt: constraints,
                        title: "DOMESTICS"),
                    //imports
                    MenuListBuilder(
                        type: imports,
                        heightttt: constraints,
                        title: "IMPORTS"),
                    //shots
                    MenuListBuilder(
                        type: shots, heightttt: constraints, title: "SHOTS"),
                    //margartitas
                    MenuListBuilder(
                        type: margaritas,
                        heightttt: constraints,
                        title: "MARGARITAS"),
                    ///////////////////
                    //martinis
                    MenuListBuilder(
                        type: martinis,
                        heightttt: constraints,
                        title: "MARTINIS"),
                    //Wine Glass
                    MenuListBuilder(
                        type: wineGlass,
                        heightttt: constraints,
                        title: "WINE GLASSES"),
                    //Wine Bottles
                    MenuListBuilder(
                        type: wineBottle,
                        heightttt: constraints,
                        title: "WINE BOTTLES"),
                  ],
                ),
              ),
/////////////////////////////////////////////////////////////////////////////////////
              //footer
              FooterSmall(
                heightttt: constraints,
              )
            ],
          );
        },
      ),
    );
  }
}
