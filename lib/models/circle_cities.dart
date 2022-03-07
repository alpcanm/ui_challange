import '../components/texts.dart';

class CircleCitiesModel {
  String title;
  String url;
  CircleCitiesModel({
    required this.title,
    required this.url,
  });
}

final List<CircleCitiesModel> circleCitiesList = [
  CircleCitiesModel(title: "India", url: Texts.urlIndia),
  CircleCitiesModel(title: "Newyork", url: Texts.urlNewyork),
  CircleCitiesModel(title: "Australia", url: Texts.urlAustralia),
  CircleCitiesModel(title: "Poland", url: Texts.urlPoland),
  CircleCitiesModel(title: "India", url: Texts.urlIndia),
];
