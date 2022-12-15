import '../models/volumes_model.dart';

abstract class IHomeRepository {
  // NOTE -> Sempre faço uso do contrato para qualquer developer que for dar manutenção n ter dificuldades se algo tiver fora do lugar

  Future<VolumesModel> getVolume({required String searchText});
}
