import 'package:ui_challange/components/texts.dart';

class Product {
  String? title;
  String? cityName;
  String? photoURL;
  String? comment;
  String? price;
  List<String>? otherPhotos;
  Product({
    this.title,
    this.photoURL,
    this.comment,
    this.price,
    this.cityName,
    this.otherPhotos,
  });
}

List<Product> productList = [
  Product(
      cityName: 'Wayand',
      comment: Texts.comment,
      photoURL: Texts.cardUrl1,
      price: '410 ₺',
      title: 'Misty Rock Resort',
      otherPhotos: [
        Texts.urlAustralia,
        Texts.urlIndia,
        Texts.urlNewyork,
        Texts.urlPoland,
      ]),
  Product(
      cityName: 'Miami',
      comment: Texts.comment,
      photoURL: Texts.cardUrl2,
      price: '510 ₺',
      title: 'Misty Rock Resort',
      otherPhotos: [
        Texts.urlAustralia,
        Texts.urlIndia,
        Texts.urlNewyork,
        Texts.urlPoland,
      ]),
];
