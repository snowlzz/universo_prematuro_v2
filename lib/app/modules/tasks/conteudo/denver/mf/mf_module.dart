import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mf/mf_page.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mf/mf_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MfModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MfStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => MfPage()),
  ];
}
