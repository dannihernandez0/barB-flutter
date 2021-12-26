import 'package:flutter_application_1/models/CardTemplate.dart';
//import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/events.dart';
import 'package:flutter_application_1/screens/photos.dart';
import 'package:flutter_application_1/screens/about.dart';
import 'package:flutter_application_1/screens/info.dart';
import 'package:flutter_application_1/models/MenuTemplate.dart';


class HelperMenu {
  static List<MenuTemplate> getMockCards() {
    return [
      ///////Menu card
      MenuTemplate(
          type: "Beer",
          name: "Dos XX",
          image: 'dosxx.jpg',
          subMenuCards: [],
          
          ),
      ///////Menu card
      ///////Menu card
      MenuTemplate(
          type: "Beer",
          name: "Michelob Gold",
          image: 'michGold.png',
          subMenuCards: [],
          
          ),
      ///////Menu card
 
    ];
  }
}
