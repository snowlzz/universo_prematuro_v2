

import 'package:flutter_modular/flutter_modular.dart';

import 'auth_page.dart';
import 'auth_store.dart';

// import '../../home/home_page.dart';
// import '../../home/home_store.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore()),
    // Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const AuthPage()),
    // ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}