import 'package:cooper_tec_test/app/modules/home/home_store.dart';
import 'package:cooper_tec_test/app/modules/home/repositories/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => HomeRepository()),
    Bind.lazySingleton((i) => HomeStore(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const HomePage(),
    ),
  ];
}
