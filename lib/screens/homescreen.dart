import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menu.dart';

class HomeScreen extends StatelessWidget {
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
            decoration: BoxDecoration(
              image: DecorationImage(
                //background image
                image: AssetImage("lib/images/bg4.jpg"),
                //fits image to box
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
            height: 500,
            // color: Colors.amber,
            // constraints: BoxConstraints.expand(),
            child: GridView.count(
              //childAspectRatio has been included to manually adjust the size
              //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

              childAspectRatio: 10 / 1.8,
              crossAxisCount: 1,
              children: [
                //access the menu page

                //////////////////// MENU CARD/////////////////////////
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  //shadowColor: Colors.pink,
                  //allows the card to be clickable by using InkWell
                  child: new InkWell(
                    //when tapped
                    onTap: () {
                      Navigator.push(
                        context,
                        //sends from button to whatever page is inputted
                        MaterialPageRoute(builder: (context) => Menu()),
                      );
                    },
                    //creates a backgroundd image that is nested inside of the inkwell
                    child: Container(
                      //box decoration allows for images to be inserted
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //background image
                          image: AssetImage("lib/images/barMenu.jpg"),
                          //fits image to box
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      //THIS LAYERS TEXT ONTOP OF THE IMAGE
                      child: Center(
                          child: Text(
                        "Menu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          //puts a shadow behind the text to make it pop
                          shadows: [
                            //implemented two shadows to cover up && down
                            //as well as left && right (dx & dy)
                            Shadow(
                              color: Colors.black,
                              blurRadius: 3.0,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Colors.black,
                              blurRadius: 3.0,
                              offset: Offset(-5.0, -5.0),
                            ),
                          ],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.fill
                            ..strokeWidth = 3
                            ..color = Colors.white,
                        ),
                      )),
                    ),
                  ),
                ),

                ////////////////////////////////////////////////////////////
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
