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
      /////// card
      ///
      ///////Michelob card
      MenuTemplate(
        spiritType: "Beer",
        name: "BUDLIGHT",
        image: '',
        description: "This is a test...",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Beer",
        name: "BUDWEISER",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Beer",
        name: "MILLER",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),MenuTemplate(
        spiritType: "Beer",
        name: "MICHELOB",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Beer",
        name: "MICHELOB GOLD",
        image: 'michGold.png',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Beer",
        name: "COORS",
        image: '',
        description: "",
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
        name: "DOS XX",
        image: 'dosxx.jpg',
        description: "This is a test...",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Beer",
        name: "INDIO",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Beer",
        name: "MODELO",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),MenuTemplate(
        spiritType: "Beer",
        name: "MODELO NEGRO",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),MenuTemplate(
        spiritType: "Beer",
        name: "CORONA",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),MenuTemplate(
        spiritType: "Beer",
        name: "CORONA PREMIER",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),MenuTemplate(
        spiritType: "Beer",
        name: "ANGRY ORCHARD",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),MenuTemplate(
        spiritType: "Beer",
        name: "BOHEMIA",
        image: '',
        description: "",
        price: currentPrice,
        happyHourPrice: hhPrice,
        subMenuCards: [],
      ),MenuTemplate(
        spiritType: "Beer",
        name: "WHITECLAW",
        image: '',
        description: "",
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
        name: "PINK COOCOO ",
        image: '',
        description:
            "Patron Silver, Triple Sec, Sweet and Sour Mix and Grapefruit Juice, Rimmed with Salt",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Margarita",
        name: "BAR-B'S SPECIAL M",
        image: '',
        description:
            "1800 Reposado, Cointreau, Fresh Lime, Fresh Orange Juice and Olive Brine, and Rimmed with Salt",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Margarita",
        name: "SPRINKLE MY CHEEKS",
        image: '',
        description:
            "Jose Cuervo, Grand Marnier , Sweet and Sour Mix, Simple Syrup, Rimmed with BAR-B Sprinkles",
        price: '8',
        happyHourPrice: '7',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Margarita",
        name: "MAN GO",
        image: '',
        description:
            "Don Julic Bianco, Cointreau, Fresh Lime Juice, Agave syrup, Mango Mix and rimmed with tajin",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Margarita",
        name: "STRAWBERRY PRIDE",
        image: 'michGold.png',
        description:
            "Mezcal, Grand Marnier, Honey, Strawberry Mix, Rimmed with Salt",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
    ];
  }

////////////////////////////////////////////////////////////
  //list of martinis
  static List<MenuTemplate> getMartinis() {
    return [
      ///////Cucumber Me card
      MenuTemplate(
        spiritType: "Martini",
        name: "MINTY CHOCOCHATA ",
        image: '',
        description:
            "Chocolate Vodka, Rum Chata Creme De Menthe and Chocolate Sauce",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Martini",
        name: "CANDIED ORANGE ",
        image: '',
        description:
            "Vanilla Vodka, Frangelico,Grand Marnier and Candy Orange Slice",
        price: '10',
        happyHourPrice: '9',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Martini",
        name: "SLEEPING BEAUTY",
        image: '',
        description: "Hypnotic, Beefeaters Pink",
        price: '10',
        happyHourPrice: '9',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Martini",
        name: "FRENCH KISS",
        image: '',
        description: "Rasberry Vodka, Chambord, Pineapple Juice",
        price: '8',
        happyHourPrice: '7',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Martini",
        name: "CUCUMBER ME ",
        image: '',
        description:
            "Tito's Vodka, Fresh Lime Juice, Simple Syrup, Mint and Cucumbers",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Martini",
        name: "CLASSICALLY DIRTY",
        image: '',
        description: "Tanqueray Gin, Dry Vermouth, and Raspberry Liqueur",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
    ];
  }

/////////////////////////////////////////////////////////////////
  //list of cocktails
  static List<MenuTemplate> getCocktails() {
    return [
      ///////Merrill's Fashion card
      MenuTemplate(
        spiritType: "Cocktails",
        name: "SEXY BEACHES",
        image: '',
        description:
            "Tito’s Vodka, Peach Schnapps, Cranberry Juice and Fresh Orange Juice",
        price: '9',
        happyHourPrice: '8',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Cocktails",
        name: "TURBULOUS KOLA",
        image: '',
        description:
            "Bacardi Rum, Cream of Coconut, Pineapple Juice, and Calypso 151",
        price: '10',
        happyHourPrice: '9',
        subMenuCards: [],
      ),
      /////// card
      //////////The Fluffer card
      MenuTemplate(
        spiritType: "Cocktails",
        name: "THE FLUFFER",
        image: '',
        description:
            "Coconut Rum, Peach Schnapps, Rasberry Liqueur, Pineapple Juice and Club Soda",
        price: '7',
        happyHourPrice: '6',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Cocktails",
        name: "TROPICAL ROOFIE",
        image: '',
        description:
            "Calypso 151, Watermelon Schnapps, Fresh Orange Juice and Grenadine",
        price: '8',
        happyHourPrice: '7',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Cocktails",
        name: "RIDE OR DIE",
        image: '',
        description:
            "Patron Silver, Grand Marnier, Fresh Orange Juice, Disaronno Amaretto liqueur and sweet and sour mix",
        price: '10',
        happyHourPrice: '9',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Cocktails",
        name: "MERRILLS FASHION",
        image: '',
        description:
            "Makers Mark, Fernet-Branca and Angostura Bitters with Fresh Orange Twist",
        price: '8',
        happyHourPrice: '7',
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
        name: "PINO GRIGIO",
        image: 'michGold.png',
        description: '',
        price: '7',
        happyHourPrice: '6',
        subMenuCards: [],
      ),
      /////// card
      ///
      //////////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "MERLOT",
        image: 'michGold.png',
        description: '',
        price: '7',
        happyHourPrice: '6',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Wine",
        name: "CHARDONNAY",
        image: 'michGold.png',
        description: '',
        price: '7',
        happyHourPrice: '6',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Wine",
        name: "MOSCATO",
        image: 'michGold.png',
        description: '',
        price: '7',
        happyHourPrice: '6',
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
        name: "PINO GRIGIO",
        image: 'michGold.png',
        description: '',
        price: '23',
        happyHourPrice: 'IDK',
        subMenuCards: [],
      ),
      /////// card
      ///
      //////////Michelob card
      MenuTemplate(
        spiritType: "Wine",
        name: "MERLOT",
        image: 'michGold.png',
        description: '',
        price: '23',
        happyHourPrice: 'idk',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Wine",
        name: "CHARDONNAY",
        image: 'michGold.png',
        description: '',
        price: '23',
        happyHourPrice: 'idk',
        subMenuCards: [],
      ),
      
      /////// card
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
        name: "Mike's Lollipop",
        image: 'michGold.png',
        description:
            "Vodka, Apple and Watermelon with a dash of Tabasco and Chile",
        price: '7',
        happyHourPrice: '6',
        subMenuCards: [],
      ),
      /////// card
      //////////Michelob card
      MenuTemplate(
        spiritType: "Shot",
        name: "LEO’S M&M",
        image: 'michGold.png',
        description: "Peanut Butter Whiskey, Creme de Cocoa & Whipped Cream",
        price: '8',
        happyHourPrice: '7',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Shot",
        name: "BOTTOM'S UP",
        image: 'michGold.png',
        description: "Crown Apple Whiskey, Energy Drink & Sprite",
        price: '8',
        happyHourPrice: '7',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Shot",
        name: "BEEF CAKE",
        image: 'michGold.png',
        description: "Bacardi Rum, Triple Sec, Cinnamon and Apple Schnapps",
        price: '7',
        happyHourPrice: '6',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Shot",
        name: "FLAMES OF GLORY FOR TWO",
        image: 'michGold.png',
        description: "Rum, Lemonade, Grenadine, and Calypso 151",
        price: '13',
        happyHourPrice: '12',
        subMenuCards: [],
      ),
      MenuTemplate(
        spiritType: "Shot",
        name: "BAR-B BLOW",
        image: 'michGold.png',
        description:
            "Baileys, Butterscotch Schnapps, Topped with Whipped Cream and Sprinkles",
        price: '7',
        happyHourPrice: '6',
        subMenuCards: [],
      ),
      /////// card
    ];
  }
}
