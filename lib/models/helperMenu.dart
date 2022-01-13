//import 'package:flutter_application_1/models/CardTemplate.dart';
//import 'package:flutter_application_1/screens/homescreen.dart';
//import 'package:flutter_application_1/screens/menu.dart';
//import 'package:flutter_application_1/screens/events.dart';
//import 'package:flutter_application_1/screens/photos.dart';
//import 'package:flutter_application_1/screens/about.dart';
//import 'package:flutter_application_1/screens/info.dart';
import 'package:intl/intl.dart';

import 'package:flutter_application_1/models/MenuTemplate.dart';

var dateGetter = DateTime.now();
var currentTime = DateFormat.E().format(dateGetter);
var currentPrice;
var hhPrice;
//sets happyHourPrice to a dollar off

class HelperMenu {
  //list of domestic beer
  static List<MenuTemplate> getDomestics() {
    switch (currentTime) {
      case 'Sun':
        currentPrice = '3';
        hhPrice = '2';
        break;
      case 'Mon':
        currentPrice = 'N/A';
        hhPrice = 'N/a';

        break;
      case 'Tue':
        currentPrice = 'N/A';
        hhPrice = 'N/a';

        break;
      case 'Wed':
        currentPrice = '3';
        hhPrice = '2';

        break;
      case 'Thu':
        currentPrice = '3';
        hhPrice = '2';

        break;
      case 'Fri':
        currentPrice = '5';
        hhPrice = '4';

        break;
      case 'Sat':
        currentPrice = '5';
        hhPrice = '4';

        break;
      default:
        currentPrice = '0';
        hhPrice = '0';
    }

    return [
      ///////Dos XX card
      MenuTemplate(
        spiritType: "Beer",
        name: "Dos XX",
        image: 'dosxx.jpg',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      ///
      ///////Michelob card
      MenuTemplate(
        spiritType: "Beer",
        name: "Michelob \nGold",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      ///
      ///
    ];
  }

/////////////////////////////////////////////////////////////////
  //list of imported beer
  static List<MenuTemplate> getImports() {
    switch (currentTime) {
      case 'Sun':
        currentPrice = '4';
        hhPrice = '3';
        break;
      case 'Mon':
        currentPrice = 'N/A';
        hhPrice = 'N/A';

        break;
      case 'Tue':
        currentPrice = 'N/A';
        hhPrice = 'N/A';

        break;
      case 'Wed':
        currentPrice = '5';
        hhPrice = '4';

        break;
      case 'Thu':
        currentPrice = '4';
        hhPrice = '3';

        break;
      case 'Fri':
        currentPrice = '5';
        hhPrice = '4';

        break;
      case 'Sat':
        currentPrice = '5';
        hhPrice = '4';

        break;
      default:
        currentPrice = 'HELP';
        hhPrice = 'HELP';
    }

    return [
      ///////Indio card
      MenuTemplate(
        spiritType: "Beer",
        name: "Indio",
        image: 'djMike.jpg',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      //////////Stella card
      MenuTemplate(
        spiritType: "Beer",
        name: "Stella Airtuough",
        image: 'events1.jpg',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
    ];
  }

//////////////////////////////////////////////////////////
  //list of margaritas
  static List<MenuTemplate> getMargaritas() {
    return [
      ///////Strawberry Pride card
      MenuTemplate(
        spiritType: "Margarita",
        name: "Strawberry Pride",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      //////////Man go card
      MenuTemplate(
        spiritType: "Margarita",
        name: "Man Go",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
    ];
  }

////////////////////////////////////////////////////////////
  //list of martinis
  static List<MenuTemplate> getMartinis() {
    return [
      ///////Cucumber Me card
      MenuTemplate(
        spiritType: "Martini",
        name: "Cucumber Me",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      /// ///////Sleeping Beauty card
      MenuTemplate(
        spiritType: "Martini",
        name: "Sleeping Beauty",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
    ];
  }

/////////////////////////////////////////////////////////////////
  //list of cocktails
  static List<MenuTemplate> getCocktails() {
    return [
      ///////Merrill's Fashion card
      MenuTemplate(
        spiritType: "Cocktails",
        name: "Merrill's Fashion",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      //////////The Fluffer card
      MenuTemplate(
        spiritType: "Cocktails",
        name: "The Fluffer",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
    ];
  }

//////////////////////////////////////////////////////////////////
  //list of wine
  static List<MenuTemplate> getWineGlass() {
    return [
      ///////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "Moscato",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      ///
      //////////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "Pino Grigio",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
    ];
  }
/////////////////////////////////////////////////////////////////

  //list of wine
  static List<MenuTemplate> getWineBottle() {
    return [
      ///////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "Moscato",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      ///
      //////////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "Pino Grigio",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
    ];
  }

/////////////////////////////////////////////////////////////////
  //list of shots
  static List<MenuTemplate> getShots() {
    return [
      ///////Michelob card
      MenuTemplate(
        spiritType: "Shot",
        name: "Pink Flamingo",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
      //////////Michelob card
      MenuTemplate(
        spiritType: "Shot",
        name: "Bar-B Blow",
        image: 'michGold.png',
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      /////// card
    ];
  }
}
