import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/ps/ps_page.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/ps/ps_store.dart';

class PSModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => PessoalSocialStore()),
  ];


  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PessoalSocialPage())
  ];
}