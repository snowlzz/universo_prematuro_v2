import 'package:universo_prematuro_v2/app/modules/profile/edit/edit_page.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/edit_store.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/photo_store.dart';



class EditModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditStore()),
    Bind.lazySingleton((i) => PhotoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const EditPage()),
  ];
}
