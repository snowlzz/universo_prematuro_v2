// import 'package:universo_prematuro_v2/app/modules/home/home_store.dart';


import 'package:flutter_modular/flutter_modular.dart';

// import '../home/home_page.dart';
import '../home/home_page.dart';
import '../home/home_store.dart';
import '../home/nav/nav_page.dart';
import '../home/nav/nav_store.dart';
import 'auth/auth_page.dart';
import 'auth/auth_store.dart';
import 'initial_page.dart';
import 'initial_store.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
    Bind.lazySingleton((i) => AuthStore()),
    Bind.lazySingleton((i) => NavBarStore()),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const InitialPage()),
    ChildRoute('/auth', child: (_, args) => const AuthPage()),
    ChildRoute('/nav', child: (_, args) => const NavBarPage()),
    ChildRoute('/home', child: (_, args) => const HomePage()),
  ];
}
