import 'package:flutter_application_1/models/phoneCard.dart';

class PhoneHelper {
  static List<ContactTemplate> getContactCards() {
    return [
      ///////Leo Contact card
      ContactTemplate(
          name: "Leo Zuniga",
          photo: "leo.jpg",
          title: "Owner",
          phone: "956-455-9792"
          ///////Contact card
          ///
          ///////Leo Contact card
          ///
          ),
      ContactTemplate(
          name: "Michael Corona",
          photo: "Michael.jpg",
          title: "Owner",
          phone: "insert number"
          ///////Contact card
          //////////Leo Contact card
          ),
      ContactTemplate(
          name: "Merrill Hammons",
          photo: "leo.jpg",
          title: "Owner",
          phone: "956-455-9792"
          ///////Contact card
          ///
          //////////Leo Contact card
          ),
      ContactTemplate(
          name: "Marlene",
          photo: "leo.jpg",
          title: "Owner",
          phone: "956-455-9792"
          ///////Contact card
          ),
    ];
  }
}
