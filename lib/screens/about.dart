import 'package:flutter/material.dart';








class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
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
                    child: Text('Header'),
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
                    Image.asset('lib/images/barBLowQual.png'),
                    Text("hello"),
                    //
                    //Container inserts the section where buttons will be in

                    Container(
                      //expanded widget will fill column without overflow
                      child: Expanded(
                        //grid will display each button and route them to each page.
                        child: GridView.count(
                          //childAspectRatio has been included to manually adjust the size
                          //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

                          childAspectRatio: 10 / 1.8,
                          crossAxisCount: 1,
                          children: [
                            //access the menu page
                            Card(
                                child: Center(
                                  child: Text("Menu"),
                                ),
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            //access the events page
                            Card(
                                child: Center(
                                  child: Center(
                                    child: Text("Events"),
                                  ),
                                ),
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            //ACESS THE PHOTOS page
                            Card(
                                child: Center(
                                  child: Text("Photos"),
                                ),
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            //access about Bar-B page
                            Card(
                                //centers the test inside of the menu
                                child: Center(
                                  child: Text("About Bar-B"),
                                ),
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            //access Contact Us page
                            Card(
                                child: Center(
                                  child: Text("Contact Us"),
                                ),
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                          ],
                        ),
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
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text('Header'),
            ),
          ),
          Container(
            height: 500,
            color: Colors.amber,
            // constraints: BoxConstraints.expand(),
            child: GridView.count(
              //childAspectRatio has been included to manually adjust the size
              //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

              childAspectRatio: 10 / 1.8,
              crossAxisCount: 1,
              children: [
                //access the menu page

                Card(
                    child: Center(
                      child: Text("Beers"),
                    ),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                //access the events page
                Card(
                    child: Center(
                      child: Center(
                        child: Text("Cocktails"),
                      ),
                    ),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                //ACESS THE PHOTOS page
                Card(
                    child: Center(
                      child: Text("Shots"),
                    ),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                //access about Bar-B page
                Card(
                    //centers the test inside of the menu
                    child: Center(
                      child: Text("Margaritas"),
                    ),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                //access Contact Us page
                Card(
                    child: Center(
                      child: Text("Martinis"),
                    ),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                Card(
                    child: Center(
                      child: Text("Wines"),
                    ),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ],
            ),
          ),
          Container(
            height: constraints.maxHeight - 600,
            color: Colors.lightGreen,
            child: Center(
              child: Text('Footer'),
            ),
          )
        ],
      );
    }));
  }
}
