import 'package:cooper_tec_test/app/modules/home/models/volume_info_model.dart';

class VolumeItemModel {
  String? id;
  String? selfLink;
  VolumeInfoModel? volumeInfo;
  bool? isFavorite;

  VolumeItemModel({
    this.id,
    this.selfLink,
    this.volumeInfo,
    this.isFavorite = false,
  });

  VolumeItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfoModel.fromJson(json['volumeInfo'])
        : null;
    isFavorite = json['isFavorite'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['selfLink'] = selfLink;
    if (volumeInfo != null) {
      data['volumeInfo'] = volumeInfo!.toJson();
    }
    data['isFavorite'] = false;

    return data;
  }
}
