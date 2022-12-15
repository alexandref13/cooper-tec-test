import 'package:cooper_tec_test/app/modules/home/models/volumes_model.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import '../../shared/helpers/status_enum.dart';
import 'repositories/home_repository_interface.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final IHomeRepository repository;

  HomeStoreBase(this.repository);

  @observable
  VolumesModel? volumes;

  @observable
  StatusEnum status = StatusEnum.empty;

  @action
  getVolumes({required String searchText}) async {
    try {
      status = StatusEnum.loading;

      final response = await repository.getVolume(searchText: searchText);

      volumes = response;

      status = StatusEnum.done;
    } on DioError {
      status = StatusEnum.done;

      rethrow;
    }
  }
}
