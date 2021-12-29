//import 'package:flutter_application_1/models/CardTemplate.dart';
//import 'package:flutter_application_1/screens/homescreen.dart';
//import 'package:flutter_application_1/screens/menu.dart';
//import 'package:flutter_application_1/screens/events.dart';
//import 'package:flutter_application_1/screens/photos.dart';
//import 'package:flutter_application_1/screens/about.dart';
//import 'package:flutter_application_1/screens/info.dart';
import 'package:flutter_application_1/models/MenuTemplate.dart';

class HelperMenu {
  //list of domestic beer
  static List<MenuTemplate> getDomestics() {
    return [
      ///////Dos XX card
      MenuTemplate(
        spiritType: "Beer",
        name: "Dos XX",
        image: 'dosxx.jpg',
        subMenuCards: [],
      ),
      /////// card
      ///
      ///////Michelob card
      MenuTemplate(
        spiritType: "Beer",
        name: "Michelob Gold",
        image: 'michGold.png',
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
    return [
      ///////Indio card
      MenuTemplate(
        spiritType: "Beer",
        name: "Indio",
        image: 'djMike.jpg',
        subMenuCards: [],
      ),
      /////// card
      //////////Stella card
      MenuTemplate(
        spiritType: "Beer",
        name: "Stella Airtuough",
        image: 'events1.jpg',
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
        subMenuCards: [],
      ),
      /////// card
      //////////Man go card
      MenuTemplate(
        spiritType: "Margarita",
        name: "Man Go",
        image: 'michGold.png',
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
        subMenuCards: [],
      ),
      /////// card
      /// ///////Sleeping Beauty card
      MenuTemplate(
        spiritType: "Martini",
        name: "Sleeping Beauty",
        image: 'michGold.png',
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
        subMenuCards: [],
      ),
      /////// card
      //////////The Fluffer card
      MenuTemplate(
        spiritType: "Cocktails",
        name: "The Fluffer",
        image: 'michGold.png',
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
        subMenuCards: [],
      ),
      /////// card
      ///
      //////////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "Pino Grigio",
        image: 'michGold.png',
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
        subMenuCards: [],
      ),
      /////// card
      ///
      //////////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "Pino Grigio",
        image: 'michGold.png',
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
        subMenuCards: [],
      ),
      /////// card
      //////////Michelob card
      MenuTemplate(
        spiritType: "Shot",
        name: "Bar-B Blow",
        image: 'michGold.png',
        subMenuCards: [],
      ),
      /////// card
    ];
  }
}
