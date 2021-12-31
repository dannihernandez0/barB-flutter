import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/helperMenu.dart';
import 'package:flutter_application_1/models/MenuTemplate.dart';


// ignore: must_be_immutable
class Menu extends StatelessWidget {
  //Domestic Beers
  List<MenuTemplate> domestics = HelperMenu.getDomestics();
  //Imports Beers
  List<MenuTemplate> imports = HelperMenu.getImports();
  //cocktails
  List<MenuTemplate> cocktails = HelperMenu.getCocktails();
  //margartias
  List<MenuTemplate> margaritas = HelperMenu.getMargaritas();
  //martinis
  List<MenuTemplate> martinis = HelperMenu.getMartinis();
  //Wine Glass
  List<MenuTemplate> wineGlass = HelperMenu.getWineGlass();
  //wine Bottle
  List<MenuTemplate> wineBottle = HelperMenu.getWineBottle();
  //shots
  List<MenuTemplate> shots = HelperMenu.getShots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Large screens (tablet on landscape mode, desktop, TV)
/******************************************************************************/
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
                //left side column
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: constraints.maxWidth * 0.75,
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text('HomeScreen'),
                      ),
                    ),
                    Container(
                      height: 500,
                      width: constraints.maxWidth * 0.75,
                      color: Colors.amber,
                      child: Center(
                        child: Text('Main Content'),
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight - 600,
                      width: constraints.maxWidth * 0.75,
                      color: Colors.lightGreen,
                      child: Center(
                        child: Text('Footer'),
                      ),
                    ),
                  ],
                ),
                //right size column
                Container(
                  color: Colors.grey[850],
                  width: constraints.maxWidth * 0.25,
                  height: constraints.maxHeight,
                  //color: Colors.pink,
                  child: Center(
                    //separates the right column into segments
                    child: Column(
                      children: <Widget>[
                        //bar-b logo
                        Image.asset('lib/images/barBLowQual.png'),

                        //Container inserts the section where buttons will be in

                        Container(
                          //expanded widget will fill column without overflow
                          child: Expanded(
                            //grid will display each button and route them to each page.
                            child: ListView.builder(
                                //childAspectRatio has been included to manually adjust the size
                                //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                                itemCount: domestics.length,
                                itemBuilder: (BuildContext ctx, int index) {
                                  return Container(
                                    margin: EdgeInsets.all(5),
                                    height: 75,
                                    child: Stack(
                                      children: [
                                        //POSITON.FILL ensures the widget is completely filled in the area

                                        //positions the gradient over the actual photo
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            height: 120,
                                            decoration: BoxDecoration(
                                              //border radius adds theborder and gradient leveled
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              //adds a gradient over the card
                                              gradient: LinearGradient(
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                colors: [
                                                  Colors.black.withOpacity(0.7),
                                                  Colors.transparent,
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        //inserts name
                                        Row(
                                          //centers the text horizontally
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                child: SizedBox.expand(
                                              child: Image.asset(
                                                'lib/images/' +
                                                    domestics[index].image,
                                                //fills in photo to cover area
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                            Container(
                                              child: Center(
                                                child: Text(
                                                  domestics[index].name,
                                                  textAlign: TextAlign.center,
                                                  //edits the style of the font imprted from class
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    foreground: Paint()
                                                      ..style =
                                                          PaintingStyle.fill
                                                      ..strokeWidth = 3
                                                      ..color = Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
/******************************************************************************** */
          // Samll screens
          return Column(
            children: [
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
                height: 100,
                //color: Colors.black87,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(flex: 1),
                      Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.phone_in_talk,
                            color: Colors.white,
                          )),
                      Spacer(
                        flex: 6,
                      ),
                      //Text('Header'),
                      Image.asset('lib/images/barBLogoCrop.png'),

                      Spacer(
                        flex: 6,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.phone_in_talk,
                            color: Colors.white,
                          )),
                      Spacer(flex: 1),
                    ],
                  ),
                ),
              ),

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

                    ///Domestics Heading
                    //////////////////////
                    Center(
                      child: Text(
                        "Domestics",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white.withOpacity(0.2)),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: constraints.maxHeight / 5),
                      child: ListView.builder(
                        //creates a list based on the incoming parameters
                        shrinkWrap: true,
                        //childAspectRatio has been included to manually adjust the size
                        //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                        itemCount: domestics.length,
                        //allows list to be scrollable sideways
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            //creates constraints for card to form
                            child: SizedBox(
                              width: 250,
                              //each card for each item
                              child: Card(
                                //card background
                                color: Colors.black54,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                //rounds border of CARD
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(children: [
                                  //sets aspect ration to 1:1 , aka a square
                                  AspectRatio(
                                    //width: 160,
                                    aspectRatio: 1,
                                    //square image
                                    child: ClipRRect(
                                      //rounds corners of image
                                      borderRadius: BorderRadius.circular(10),
                                      //imports image from menu class
                                      child: Image.asset("lib/images/" +
                                          domestics[index].image),
                                    ),
                                  ),
                                  //the text is right here
                                  Expanded(
                                    //name of beverage
                                    //font, color, size
                                    child: Text(domestics[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    ///imports Heading
                    //////////////////////
                    Center(
                      child: Text(
                        "Imports",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white.withOpacity(0.2)),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: constraints.maxHeight / 5),
                      child: ListView.builder(
                        //creates a list based on the incoming parameters
                        shrinkWrap: true,
                        //childAspectRatio has been included to manually adjust the size
                        //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                        itemCount: imports.length,
                        //allows list to be scrollable sideways
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            //creates constraints for card to form
                            child: SizedBox(
                              width: 250,
                              //each card for each item
                              child: Card(
                                //card background
                                color: Colors.black54,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                //rounds border of CARD
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(children: [
                                  //sets aspect ration to 1:1 , aka a square
                                  AspectRatio(
                                    //width: 160,
                                    aspectRatio: 1,
                                    //square image
                                    child: ClipRRect(
                                      //rounds corners of image
                                      borderRadius: BorderRadius.circular(10),
                                      //imports image from menu class
                                      child: Image.asset(
                                          "lib/images/" + imports[index].image),
                                    ),
                                  ),
                                  //the text is right here
                                  Expanded(
                                    //name of beverage
                                    //font, color, size
                                    child: Text(imports[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //////////////////////

                    ///Martinis Heading
                    //////////////////////
                    Center(
                      child: Text(
                        "Martinis",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white.withOpacity(0.2)),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: constraints.maxHeight / 5),
                      child: ListView.builder(
                        //creates a list based on the incoming parameters
                        shrinkWrap: true,
                        //childAspectRatio has been included to manually adjust the size
                        //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                        itemCount: martinis.length,
                        //allows list to be scrollable sideways
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            //creates constraints for card to form
                            child: SizedBox(
                              width: 250,
                              //each card for each item
                              child: Card(
                                //card background
                                color: Colors.black54,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                //rounds border of CARD
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(children: [
                                  //sets aspect ration to 1:1 , aka a square
                                  AspectRatio(
                                    //width: 160,
                                    aspectRatio: 1,
                                    //square image
                                    child: ClipRRect(
                                      //rounds corners of image
                                      borderRadius: BorderRadius.circular(10),
                                      //imports image from menu class
                                      child: Image.asset("lib/images/" +
                                          martinis[index].image),
                                    ),
                                  ),
                                  //the text is right here
                                  Expanded(
                                    //name of beverage
                                    //font, color, size
                                    child: Text(martinis[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //////////////////////

                    ///Margaritas Heading
                    //////////////////////
                    Center(
                      child: Text(
                        "Margaritas",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white.withOpacity(0.2)),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: constraints.maxHeight / 5),
                      child: ListView.builder(
                        //creates a list based on the incoming parameters
                        shrinkWrap: true,
                        //childAspectRatio has been included to manually adjust the size
                        //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                        itemCount: margaritas.length,
                        //allows list to be scrollable sideways
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            //creates constraints for card to form
                            child: SizedBox(
                              width: 250,
                              //each card for each item
                              child: Card(
                                //card background
                                color: Colors.black54,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                //rounds border of CARD
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(children: [
                                  //sets aspect ration to 1:1 , aka a square
                                  AspectRatio(
                                    //width: 160,
                                    aspectRatio: 1,
                                    //square image
                                    child: ClipRRect(
                                      //rounds corners of image
                                      borderRadius: BorderRadius.circular(10),
                                      //imports image from menu class
                                      child: Image.asset("lib/images/" +
                                          margaritas[index].image),
                                    ),
                                  ),
                                  //the text is right here
                                  Expanded(
                                    //name of beverage
                                    //font, color, size
                                    child: Text(margaritas[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //////////////////////
                    ///Wine Glasses Heading
                    //////////////////////
                    Center(
                      child: Text(
                        "Wine Glasses",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white.withOpacity(0.2)),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: constraints.maxHeight / 5),
                      child: ListView.builder(
                        //creates a list based on the incoming parameters
                        shrinkWrap: true,
                        //childAspectRatio has been included to manually adjust the size
                        //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                        itemCount: wineGlass.length,
                        //allows list to be scrollable sideways
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            //creates constraints for card to form
                            child: SizedBox(
                              width: 250,
                              //each card for each item
                              child: Card(
                                //card background
                                color: Colors.black54,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                //rounds border of CARD
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(children: [
                                  //sets aspect ration to 1:1 , aka a square
                                  AspectRatio(
                                    //width: 160,
                                    aspectRatio: 1,
                                    //square image
                                    child: ClipRRect(
                                      //rounds corners of image
                                      borderRadius: BorderRadius.circular(10),
                                      //imports image from menu class
                                      child: Image.asset("lib/images/" +
                                          wineGlass[index].image),
                                    ),
                                  ),
                                  //the text is right here
                                  Expanded(
                                    //name of beverage
                                    //font, color, size
                                    child: Text(wineGlass[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //////////////////////
                    ///
                    ///Wine Bottle Heading
                    //////////////////////
                    Center(
                      child: Text(
                        "Wine Bottles",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white.withOpacity(0.2)),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: constraints.maxHeight / 5),
                      child: ListView.builder(
                        //creates a list based on the incoming parameters
                        shrinkWrap: true,
                        //childAspectRatio has been included to manually adjust the size
                        //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                        itemCount: wineBottle.length,
                        //allows list to be scrollable sideways
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            //creates constraints for card to form
                            child: SizedBox(
                              width: 250,
                              //each card for each item
                              child: Card(
                                //card background
                                color: Colors.black54,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                //rounds border of CARD
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(children: [
                                  //sets aspect ration to 1:1 , aka a square
                                  AspectRatio(
                                    //width: 160,
                                    aspectRatio: 1,
                                    //square image
                                    child: ClipRRect(
                                      //rounds corners of image
                                      borderRadius: BorderRadius.circular(10),
                                      //imports image from menu class
                                      child: Image.asset("lib/images/" +
                                          wineBottle[index].image),
                                    ),
                                  ),
                                  //the text is right here
                                  Expanded(
                                    //name of beverage
                                    //font, color, size
                                    child: Text(wineBottle[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //////////////////////
                    ///shotxs Heading
                    //////////////////////
                    Center(
                      child: Text(
                        "Shots",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white.withOpacity(0.2)),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: constraints.maxHeight / 5),
                      child: ListView.builder(
                        //creates a list based on the incoming parameters
                        shrinkWrap: true,
                        //childAspectRatio has been included to manually adjust the size
                        //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                        itemCount: shots.length,
                        //allows list to be scrollable sideways
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            //creates constraints for card to form
                            child: SizedBox(
                              width: 250,
                              //each card for each item
                              child: Card(
                                //card background
                                color: Colors.black54,
                                elevation: 10,
                                shadowColor: Colors.grey,
                                //rounds border of CARD
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(children: [
                                  //sets aspect ration to 1:1 , aka a square
                                  AspectRatio(
                                    //width: 160,
                                    aspectRatio: 1,
                                    //square image
                                    child: ClipRRect(
                                      //rounds corners of image
                                      borderRadius: BorderRadius.circular(10),
                                      //imports image from menu class
                                      child: Image.asset(
                                          "lib/images/" + shots[index].image),
                                    ),
                                  ),
                                  //the text is right here
                                  Expanded(
                                    //name of beverage
                                    //font, color, size
                                    child: Text(shots[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //////////////////////
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
              Container(
                height: constraints.maxHeight - 600,
                color: Colors.black87,
                child: Center(
                  child: Text(
                    'Footer',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
