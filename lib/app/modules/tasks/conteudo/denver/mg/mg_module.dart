import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mg/mg_page.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mg/mg_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MgModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MgStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => MgPage()),
  ];
}
