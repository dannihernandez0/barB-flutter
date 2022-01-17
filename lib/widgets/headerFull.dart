import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screens/menu.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
//allows for access of cards for menu pages
import 'package:flutter_application_1/models/CardTemplate.dart';
import 'package:flutter_application_1/models/helperUtil.dart';

//allows for access to menu class
import 'package:flutter_application_1/models/helperMenu.dart';
import 'package:flutter_application_1/models/MenuTemplate.dart';

//access pictures events
import "package:flutter_application_1/models/photoTemplate.dart";
import "package:flutter_application_1/models/helperPhoto.dart";
import 'package:flutter_application_1/screens/picDetails.dart';
//import 'package:flip_card/flip_card.dart';

Color barBBlack = Colors.black87;

var dateGetter = DateTime.now();
var currentTime = DateFormat.E().format(dateGetter);

//the shadow that goes around the border
BoxDecoration shadowEdge = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.black87,
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3),
    ),
  ],
);

//end card access pages
//
//
///**********************************HEADER FULLSCREEN********************
//creates a phone button, menu title, and return button all in left column
//*****************************************************/
//ListCategory variable for card access
List<CardTemplate> cardCustom = HelperUtil.getMockCards();
//

///!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
///FULL SCREEN WIDGETS
///!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class HeaderFull extends StatelessWidget {
  final widthhh;
  final String title;
  const HeaderFull({this.widthhh, this.title});

  @override
  Widget build(BuildContext context) {
    return //TOP SECTION
        Container(
      width: widthhh.maxWidth * 0.75,
      decoration: shadowEdge,
      height: 100,
      //color: Colors.black87,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 1),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                icon: FaIcon(FontAwesomeIcons.phoneVolume),
                iconSize: 30,
                color: Colors.white,
                //lauches phone for calling number
                onPressed: _launchURL5,
              ),
            ),
            Spacer(
              flex: 6,
            ),
            //Text('Header'),
            RBowFont(title, 60),
            Spacer(
              flex: 6,
            ),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                icon: FaIcon(FontAwesomeIcons.home),
                iconSize: 25,
                color: Colors.white,
                //lauches phone for calling number
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

///**********************************END OF HEADER FULLSCREEN********************/
///********************************************************/
/////
//////**********************************Footer FULLSCREEN********************
//creates buttons for facebook, twitter, instagram, and google, respectively
//*****************************************************/
class FooterFull extends StatelessWidget {
  final widthhh;
  final String title;
  const FooterFull({this.widthhh, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widthhh.maxHeight - 600,
      width: widthhh.maxWidth * 0.75,
      color: Colors.black87,
      child: Column(
        children: [
          Spacer(),
          Row(
            children: <Widget>[
              Spacer(),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Follow Us On:',
                    style: TextStyle(
                        fontFamily: "Rajdhani",
                        //fontWeight: FontWeight.bold,
                        fontSize: 30,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.white,
                        shadows: [
                          Shadow(
                              color: Colors.yellow,
                              blurRadius: 2.0,
                              offset: Offset(-4.0, -2.0))
                        ]),
                  ),
                  Text(
                    'Follow Us On:',
                    style: TextStyle(
                        fontFamily: "Rajdhani",
                        //fontWeight: FontWeight.bold,
                        fontSize: 30,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 0.5
                          ..color = Colors.white,
                        shadows: [
                          Shadow(
                              color: Colors.red,
                              blurRadius: 2.0,
                              offset: Offset(-4.0, 4.0)),
                          Shadow(
                              color: Colors.blue,
                              blurRadius: 2.0,
                              offset: Offset(2.0, -2.0))
                        ]),
                  ),
                ],
              ),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebookSquare),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL,
                ),
              ),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL2,
                ),
              ),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagramSquare),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL3,
                ),
              ),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.google),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL4,
                ),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

///**********************************END OF Footer FULLSCREEN********************/
///********************************************************/
//////**********************************Menu FULLSCREEN********************
//creates a phone button, menu title, and return button all in left column
//*****************************************************/
class MenuWidget extends StatelessWidget {
  final widthhh;
  final heightttt;
  const MenuWidget({this.widthhh, this.heightttt});

  @override
  Widget build(BuildContext context) {
    return //right size column
        Container(
      color: Colors.grey[850],
      width: widthhh.maxWidth * 0.25,
      height: heightttt.maxHeight,
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
                                borderRadius: BorderRadius.circular(10),
                                //populates the image for each entry
                                child: Image.asset(
                                  'lib/images/' + cardCustom[index].image,
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
                                    bottomRight: Radius.circular(10),
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
                                          cardCustom[index].destination),
                                );
                              },
                              //inserts name
                              child: Row(
                                //centers the text horizontally
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Center(
                                      child:
                                          RBowFont(cardCustom[index].name, 30),
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
    );
  }
}

///MENU LIST template - inWORKING
class MenuListBuilder extends StatelessWidget {
  final heightttt;
  final String title;
  final List<MenuTemplate> type;
  const MenuListBuilder({this.heightttt, this.title, this.type});
  @override
  Widget build(BuildContext context) {
    ///Import Heading
    return Column(children: [
      Center(
        child: RBowFont(title, 30),
      ),

      ////actual card
      ConstrainedBox(
        constraints: BoxConstraints(maxHeight: heightttt.maxHeight / 5),
        child: ListView.builder(
          //creates a list based on the incoming parameters
          shrinkWrap: true,
          //childAspectRatio has been included to manually adjust the size
          //of the cards in the listview, changing them from their default 1x1 square aspect ratio.

          itemCount: type.length,
          //allows list to be scrollable sideways
          scrollDirection: Axis.horizontal,

          itemBuilder: (BuildContext ctx, int index) {
            return Container(
                margin: EdgeInsets.all(5),
                //creates constraints for card to form
                child: CardAnimate(
                  type[index].name,
                  type[index].image,
                  type[index].price,
                  type[index].happyHourPrice,
                ));
          },
        ),
      ),
    ]);
  }
}

class HeaderSmall extends StatelessWidget {
  const HeaderSmall();

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: constraints.maxWidth * 0.75,
      decoration: shadowEdge,
      height: 100,
      //color: Colors.black87,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 1),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                icon: FaIcon(FontAwesomeIcons.phoneVolume),
                iconSize: 30,
                color: Colors.white,
                //lauches phone for calling number
                onPressed: _launchURL5,
              ),
            ),
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
              child: IconButton(
                icon: FaIcon(FontAwesomeIcons.home),
                iconSize: 25,
                color: Colors.white,
                //lauches phone for calling number
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

///
///
///FOOTER - WORKING
class FooterSmall extends StatelessWidget {
  final heightttt;
  const FooterSmall({this.heightttt});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightttt.maxHeight - 600,
      //width: widthhh.maxWidth * 0.75,
      color: barBBlack,
      child: Column(
        children: [
          Spacer(),
          Row(
            children: <Widget>[
              Spacer(),
              RBowFont("Follow Us On:", 30),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebookSquare),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL,
                ),
              ),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL2,
                ),
              ),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagramSquare),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL3,
                ),
              ),
              Spacer(),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.google),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: _launchURL4,
                ),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

//WORKS
class MenuCardSmall extends StatelessWidget {
  final heightttt;
  const MenuCardSmall({this.heightttt});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: shadowEdge,
        height: 500,
        // color: Colors.amber,
        // constraints: BoxConstraints.expand(),
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
                        borderRadius: BorderRadius.circular(10),
                        //populates the image for each entry
                        child: Image.asset(
                          'lib/images/' + cardCustom[index].image,
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
                            bottomRight: Radius.circular(10),
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
                                  cardCustom[index].destination),
                        );
                      },
                      //inserts name
                      child: Row(
                        //centers the text horizontally
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Center(
                                child: RBowFont(cardCustom[index].name, 30)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}

///list of menu items, working
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
//////////////////////////////////////////////////////////////////
//ListCategory
List<PhotoTemplate> event = HelperPhoto.getEvents();

class EventWidget extends StatelessWidget {
  final widthhh;

  const EventWidget({this.widthhh});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthhh.maxWidth * 0.75,
      decoration: shadowEdge,
      height: 500,
      // width: constraints.maxWidth * 0.75,
      // color: barBBlack,
      child: Center(
        //enter in logic here

        //
        child: //////BODY PART
            Container(
          decoration: shadowEdge,
          height: 500,
          //organizes the list of list views besides using column
          child: GridView.builder(
              itemCount: event.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PicDetails(
                          imagePath: "eventImage/" + event[index].image,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(
                          "lib/eventImage/" + event[index].image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class EventWidgetSmall extends StatelessWidget {
  const EventWidgetSmall();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: shadowEdge,
      height: 500,
      //organizes the list of list views besides using column
      child: GridView.builder(
          itemCount: event.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return RawMaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PicDetails(
                      imagePath: "eventImage/" + event[index].image,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(
                      "lib/eventImage/" + event[index].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }),
    );
  }
}

//******************
///* creates buttons for
//* 0: facebook
//* 2: Twitter
//* 3: Instagram
//* 4: Google
//* 9: Links to phone number of Store
//*****************************************************/

_launchURL() async {
  const url = 'https://www.facebook.com/downtownbrownsvilletx';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://twitter.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'https://www.instagram.com/barbrgv/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url =
      'https://www.google.com/search?sa=X&q=bar-b&npsic=0&rflfq=1&rldoc=1&rllag=25930518,-97487725,3546&tbm=lcl&ved=2ahUKEwj83pCk5pH1AhX5SzABHQnRAv0QtgN6BAgEEHQ&cshid=1641082942488907&biw=1536&bih=754&dpr=1.25#rlfi=hd:;si:14465353669352556509,l,CgViYXItYkj57Lyb07SAgAhaDxAAEAEYABgBIgViYXIgYpIBB2dheV9iYXKqAQ0QASoJIgViYXIgYigA,y,t9Y5l-lB_Nk;mv:[[25.9607963,-97.46661189999999],[25.9002403,-97.5088395]]';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'tel:9566212739';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class RBowFont extends StatelessWidget {
  //the text to be inserted into the function
  final String textString;
  final double textSize;
  RBowFont(this.textString, this.textSize);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Stroked text as border.
        Text(
          textString,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Rajdhani",
              //fontWeight: FontWeight.bold,
              fontSize: textSize,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.white,
              shadows: [
                Shadow(
                    color: Colors.yellow,
                    blurRadius: 2.0,
                    offset: Offset(-4.0, -2.0))
              ]),
        ),
        Text(
          textString,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Rajdhani",
              //fontWeight: FontWeight.bold,
              fontSize: textSize,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 0.5
                ..color = Colors.white,
              shadows: [
                Shadow(
                    color: Colors.red,
                    blurRadius: 2.0,
                    offset: Offset(-4.0, 4.0)),
                Shadow(
                    color: Colors.blue,
                    blurRadius: 2.0,
                    offset: Offset(2.0, -2.0))
              ]),
        ),
      ],
    );
  }
}

class CardAnimate extends StatefulWidget {
  //the text to be inserted into the function
  final String image;
  final String name;
  final String price;
  final String happyhour;
  CardAnimate(this.name, this.image, this.price, this.happyhour);

  @override
  _CardAnimateState createState() => _CardAnimateState();
}

class _CardAnimateState extends State<CardAnimate> {
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "tag",
        child: SizedBox(
          //width: 250,
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
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenuDisplay(
                              dname: widget.name,
                              dimage: widget.image,
                              dprice: widget.price,
                              dhhprice: widget.happyhour,
                            )));
              },
              child: Stack(children: [
                //sets aspect ration to 1:1 , aka a square

                AspectRatio(
                  //width: 160,
                  aspectRatio: 1,
                  //square image
                  child: ClipRRect(
                    //rounds corners of image
                    borderRadius: BorderRadius.circular(10),
                    //imports image from menu class
                    child: Image.asset("lib/images/" + widget.image),
                  ),
                ),
                //the text is right here
                Positioned.fill(
                  //name of beverage
                  //font, color, size
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Spacer(),
                        RBowFont(widget.name, 20),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class MenuDisplay extends StatelessWidget {
  String dname;
  String dimage;
  String dprice;
  String dhhprice;
  var backIcon = Icons.arrow_back;
  MenuDisplay({this.dname, this.dimage, this.dprice, this.dhhprice});

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
                HeaderFull(widthhh: constraints, title: "Menu"),
                //////BODY PART
                Container(
                    decoration: shadowEdge,
                    child: Container(
                        width: constraints.maxWidth * .75,
                        height: 500,
                        decoration: shadowEdge,
                        child: Stack(
                          children: [
                            
                        
                            Card(
                              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),),
                              elevation: 10,
                              child: Container(
                                alignment: Alignment(0.0, 1.0),
                                height: 500,
                                width: constraints.maxWidth * .75,
                                color: barBBlack,
                                
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(child: Image.asset("lib/images/" + dimage, ),),
                                    RBowFont(
                                      dname,
                                      40,
                                    ),
                                    RBowFont("Price: " + dprice, 20),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(backIcon),
                                iconSize: 30,
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ],
                        ))),
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

/*
    
    
    Column(children: [
      HeaderFull(widthhh: 200, title: 'MENU'),
      Container(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("back"),
          ),
          Image.asset("lib/images/" + dimage),
          Text(dname),
          Row(
            children: [
              Text("PRICE: " + dprice),
              Text("Happy hour: " + dhhprice)
            ],
          )
        ],
      ))
    ]);
*/
