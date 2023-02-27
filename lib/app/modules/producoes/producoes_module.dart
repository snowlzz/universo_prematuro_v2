
import 'package:universo_prematuro_v2/app/modules/producoes/producoes_page.dart';
import 'package:universo_prematuro_v2/app/modules/producoes/producoes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/services/yt_api_service.dart';

class ProducoesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProducoesStore()),
    Bind.instance(APIService.instance)
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) =>  ProducoesPage()),
  ];
}
