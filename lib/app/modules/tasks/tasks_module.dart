import 'package:universo_prematuro_v2/app/modules/tasks/tasks_page.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/tasks_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'conteudo/conteudo_page.dart';
import 'conteudo/conteudo_store.dart';
import 'conteudo/denver/lg/lg_page.dart';
import 'conteudo/denver/lg/lg_store.dart';
import 'conteudo/denver/mf/mf_store.dart';
import 'conteudo/denver/mg/mg_store.dart';
import 'conteudo/denver/ps/ps_page.dart';
import 'conteudo/denver/ps/ps_store.dart';

class TasksModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TasksStore()),
    Bind.lazySingleton((i) => ConteudoStore()),
    Bind.lazySingleton((i) => PessoalSocialStore()),
    Bind.lazySingleton((i) => LgStore()),
    Bind.lazySingleton((i) => MgStore()),
    Bind.lazySingleton((i) => MfStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const TasksPage()),
    ChildRoute('/conteudo', child: (_, args) => const ConteudoPage()),
    ChildRoute('/ps', child: (_, args) => const PessoalSocialPage()),
    ChildRoute('/lg', child: (_, args) => const LgPage()),
  ];
}
