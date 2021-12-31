import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/CardTemplate.dart';
import 'package:flutter_application_1/models/helperUtil.dart';

// ignore: must_be_immutable

//ListCategory
List<CardTemplate> cardCustom = HelperUtil.getMockCards();

//
class Photos extends StatelessWidget {
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

                                itemCount: cardCustom.length,
                                itemBuilder: (BuildContext ctx, int index) {
                                  return Container(
                                    margin: EdgeInsets.all(5),
                                    height: 75,
                                    child: Stack(
                                      children: [
                                        //POSITON.FILL ensures the widget is completely filled in the area

                                        Positioned.fill(
                                          //CLIPRRECT rounds corners
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            //populates the image for each entry
                                            child: Image.asset(
                                              'lib/images/' +
                                                  cardCustom[index].image,
                                              //fills in photo to cover area
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),

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
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      cardCustom[index]
                                                          .destination),
                                            );
                                          },
                                          //inserts name
                                          child: Row(
                                            //centers the text horizontally
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Center(
                                                  child: Text(
                                                    cardCustom[index].name,
                                                    textAlign: TextAlign.center,
                                                    //edits the style of the font imprted from class
                                                    style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                child: Placeholder(),
              ),
              
              //////////////////////////////////////////////////////////
              ///

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
