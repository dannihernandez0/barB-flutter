import 'package:flutter_application_1/models/CardTemplate.dart';
//import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/events.dart';
import 'package:flutter_application_1/screens/photos.dart';
import 'package:flutter_application_1/screens/about.dart';
import 'package:flutter_application_1/screens/info.dart';


class HelperUtil {
  static List<CardTemplate> getMockCards() {
    return [
      ///////Menu card
      CardTemplate(
          name: "Menu",
          image: 'barMenu.jpg',
          subCards: [],
          destination: Menu()),
      ///////Menu card
      ///
      ///////Events card
      CardTemplate(
          name: "Events",
          image: 'events1.jpg',
          subCards: [],
          destination: Events()),
      ///////Events card
      ///
      ///////Photos card
      CardTemplate(
          name: "Photos",
          image: 'events1.jpg',
          subCards: [],
          destination: Photos()),
      ///////Photo card
      ///
      ///////About card
      CardTemplate(
          name: "About Us",
          image: 'events1.jpg',
          subCards: [],
          destination: About()),
      ///////About card
      ///
      ///////Contact card
      CardTemplate(
          name: "Contact Us",
          image: 'events1.jpg',
          subCards: [],
          destination: Info()),
      ///////Contact card
    ];
  }
}
