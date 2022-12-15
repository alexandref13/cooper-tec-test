import 'package:cooper_tec_test/app/modules/home/models/volumes_model.dart';
import 'package:cooper_tec_test/app/shared/services/custom_dio.dart';
import 'package:dio/dio.dart';

import 'home_repository_interface.dart';

class HomeRepository implements IHomeRepository {
  var dio = CustomDio().dio;

  @override
  Future<VolumesModel> getVolume({required String searchText}) async {
    try {
      final response = await dio.get('/volumes?q=$searchText');

      return VolumesModel.fromJson(response.data);
    } on DioError {
      rethrow;
    }
  }
}
