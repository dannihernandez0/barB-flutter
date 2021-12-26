import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MenuTemplate {
  //Whether its a beer, cocktail, shot, margarita, martini, or wine
  String type;
  String name;
  String image;
  List<MenuTemplate> subMenuCards;
  

  
  MenuTemplate({
    this.type,
    this.name,
    this.image,
    this.subMenuCards,
    
  });
}
