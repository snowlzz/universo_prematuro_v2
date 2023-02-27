

import 'package:flutter_modular/flutter_modular.dart';

import '../producoes/producoes_store.dart';
import '../profile/edit/edit_page.dart';
import '../profile/edit/edit_store.dart';
import '../profile/edit/photo_store.dart';
import 'home_page.dart';
import 'home_store.dart';
import 'nav/nav_page.dart';
import 'nav/nav_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => NavBarStore()),
    Bind.singleton((i) => EditStore()),
    Bind.lazySingleton((i) => PhotoStore()),
    Bind.lazySingleton((i) => ProducoesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
    ChildRoute('/nav', child: (_, args) => const NavBarPage()),
    ChildRoute('/edit', child: (_, args) => const EditPage()),
  ];
}
