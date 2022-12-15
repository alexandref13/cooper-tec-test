import 'package:cooper_tec_test/app/modules/home/models/volume_item_model.dart';

class VolumesModel {
  int? totalItems;
  List<VolumeItemModel>? items;

  VolumesModel({
    this.totalItems,
    this.items,
  });

  VolumesModel.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      items = <VolumeItemModel>[];
      json['items'].forEach((v) {
        items!.add(VolumeItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalItems'] = totalItems;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
