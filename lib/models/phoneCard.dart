class ContactTemplate {
  //Whether its a beer, cocktail, shot, margarita, martini, or wine
  String name;
  String title;
  String phone;
  String photo;
  List<ContactTemplate> contactCards;

  ContactTemplate({
    this.name,
    this.title,
    this.photo,
    this.phone,
    this.contactCards,
  });
}
