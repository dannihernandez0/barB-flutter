import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/headerFull.dart';
Color barBBlack = Colors.black87;


class About extends StatelessWidget {
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
              HeaderFull(widthhh: constraints, title: 'About Us'),

              //MIDDLE SECTION
              Container(
                height: 500,
                width: constraints.maxWidth * 0.75,
                color: Colors.amber,
                child: Center(
                  child: Text('Main Content'),
                ),
              ),
              //Footer Widget
              FooterFull(widthhh: constraints),
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

//////BODY PART
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
              //
              //
              //
              //
              //
              //
              //
              //
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
