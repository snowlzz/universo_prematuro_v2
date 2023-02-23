import 'package:flutter_modular/flutter_modular.dart';

// import '../../profile/edit/edit_store.dart';
// import '../../profile/edit/photo_store.dart';
// import '../../profile/profile_page.dart';
// import '../../profile/profile_store.dart';
// import '../../tasks/tasks_page.dart';
// import '../../tasks/tasks_store.dart';
import '../../growth/growth_Page.dart';
import '../../growth/growth_store.dart';
import '../../profile/edit/edit_store.dart';
import '../../profile/edit/photo_store.dart';
import '../../profile/profile_page.dart';
import '../../profile/profile_store.dart';
import '../../tasks/tasks_page.dart';
import '../../tasks/tasks_store.dart';
import 'nav_page.dart';
import 'nav_store.dart';

class NavModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NavBarStore()),
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => TasksStore()),
    Bind.singleton((i) => EditStore()),
    Bind.lazySingleton((i) => PhotoStore()),
    Bind.lazySingleton((i) => GrowthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const NavBarPage()),
    ChildRoute('/profile', child: (_, args) => const ProfilePage()),
    ChildRoute('/tasks', child: (_, args) => const TasksPage()),
    ChildRoute('/growth', child: (_, args) => const GrowthPage()),
  ];

}