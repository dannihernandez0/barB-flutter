import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/CardTemplate.dart';
import 'package:flutter_application_1/models/helperUtil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/screens/homescreen.dart';


List<CardTemplate> cardCustom = HelperUtil.getMockCards();
Color barBBlack = Colors.black87;

class Info extends StatelessWidget {
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
                    //TOP SECTION
                   //TOP SECTION
                    Container(
                      width: constraints.maxWidth * 0.75,
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
                              child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.phoneVolume),
                                iconSize: 30,
                                color: Colors.white,
                                //lauches phone for calling number
                                onPressed: _launchURL9,
                              ),
                            ),
                            Spacer(
                              flex: 6,
                            ),
                            //Text('Header'),
                            Stack(
                              children: <Widget>[
                                // Stroked text as border.
                                Text(
                                  'INFO',
                                  style: TextStyle(
                                      fontFamily: "Rajdhani",
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 60,
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
                                  'INFO',
                                  style: TextStyle(
                                      fontFamily: "Rajdhani",
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 60,
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
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()),
                                  );
                                },
                              ),
                            ),
                            Spacer(flex: 1),
                          ],
                        ),
                      ),
                    ),

                    //MIDDLE SECTION
                    Container(
                      height: 500,
                      width: constraints.maxWidth * 0.75,
                      color: Colors.amber,
                      child: Center(
                        child: Text('Main Content'),
                      ),
                    ),

                    //footer
                    Container(
                      height: constraints.maxHeight - 600,
                      width: constraints.maxWidth * 0.75,
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
                                  icon:
                                      FaIcon(FontAwesomeIcons.instagramSquare),
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
                    )
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
          //TOP SECTION
                    Container(
                      //width: constraints.maxWidth * 0.75,
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
                              child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.phoneVolume),
                                iconSize: 30,
                                color: Colors.white,
                                //lauches phone for calling number
                                onPressed: _launchURL9,
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
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()),
                                  );
                                },
                              ),
                            ),
                            Spacer(flex: 1),
                          ],
                        ),
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
          //footer
              Container(
                height: constraints.maxHeight - 600,
                //width: constraints.maxWidth * 0.75,
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
              )
        ],
      );
    }));
  }
}

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

_launchURL9() async {
  const url =
      'tel:9566212739';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
