import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() => runApp(
      // NOTE -> Para melhor manutenção do código eu uso o Flutter Modular e seu Pattern próprio

      // NOTE -> Pelo tempo não consegui fazer um git flow e testes unitários, mas tenho experiencia ampla em ambos
      ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    );
