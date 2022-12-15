class VolumeImageModel {
  String? smallThumbnail;
  String? thumbnail;

  VolumeImageModel({this.smallThumbnail, this.thumbnail});

  VolumeImageModel.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['smallThumbnail'] = smallThumbnail;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
