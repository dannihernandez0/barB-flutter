class MenuTemplate {
  //Whether its a beer, cocktail, shot, margarita, martini, or wine
  String spiritType;
  String name;
  String image;
  String price;
  String description;
  String happyHourPrice;
  List<MenuTemplate> subMenuCards;

  MenuTemplate({
    this.spiritType,
    this.name,
    this.image,
    this.price,
    this.description,
    this.happyHourPrice,
    this.subMenuCards,
  });
}
