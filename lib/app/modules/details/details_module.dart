import 'package:cooper_tec_test/app/modules/details/details_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) =>  DetailsPage( 
        detailsVolume: args.data['detailsVolume'],
       ),
    ),
  ];
}
