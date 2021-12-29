

import 'package:flutter/cupertino.dart';

class CardTemplate {
  String name;
  String image;
  List<CardTemplate> subCards;
  Widget destination;

  CardTemplate({
    this.name,
    this.image,
    this.subCards,
    this.destination,
  });
}
