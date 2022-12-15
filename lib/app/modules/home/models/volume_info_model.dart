import 'package:cooper_tec_test/app/modules/home/models/volume_image_model.dart';

class VolumeInfoModel {
  String? title;
  List<dynamic>? authors;
  List<dynamic>? categories;
  String? publisher;
  String? publishedDate;
  String? description;
  int? pageCount;
  VolumeImageModel? imageLinks;

  VolumeInfoModel({
    this.title,
    this.authors,
    this.categories,
    this.publisher,
    this.publishedDate,
    this.description,
    this.imageLinks,
  });

  VolumeInfoModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = json['authors'] ?? [];
    categories = json['categories'] ?? [];
    publisher = json['publisher'];
    pageCount = json['pageCount'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    imageLinks = json['imageLinks'] != null
        ? VolumeImageModel.fromJson(json['imageLinks'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['authors'] = authors;
    data['categories'] = categories;
    data['publisher'] = publisher;
    data['pageCount'] = pageCount;
    data['publishedDate'] = publishedDate;
    data['description'] = description;
    if (imageLinks != null) {
      data['imageLinks'] = imageLinks!.toJson();
    }
    return data;
  }
}
