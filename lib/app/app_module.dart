import 'package:cooper_tec_test/app/modules/details/details_module.dart';
import 'package:cooper_tec_test/app/shared/services/custom_dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind(
      (i) => CustomDio(),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute("/details", module: DetailsModule()),
  ];
}
