import 'package:universo_prematuro_v2/app/modules/growth/growth_Page.dart';
import 'package:universo_prematuro_v2/app/modules/growth/growth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/growth/material/tip/tip_page.dart';

// import 'material/tip/pages/copinho.dart';
import 'material/tip/pages/copinho.dart';
import 'material/tip/tip_store.dart';
// import 'material/tip/pages/prontidao.dart';

class GrowthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => GrowthStore()),
    Bind.lazySingleton((i) => TipStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const GrowthPage()),
    ChildRoute('/copinho', child: (_, args) => const Copinho()),
    ChildRoute('/tip', child: (_, args) => const TipPage()),
    ];
}
