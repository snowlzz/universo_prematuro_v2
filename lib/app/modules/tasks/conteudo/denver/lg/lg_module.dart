import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/lg/lg_page.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/lg/lg_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LgModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LgStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LgPage()),
  ];
}
