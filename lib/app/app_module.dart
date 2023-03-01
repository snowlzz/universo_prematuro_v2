import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/services/yt_api_service.dart';
// import 'package:universo_prematuro_v2/app/modules/cartilha/cartilha_page.dart';
// import 'package:universo_prematuro_v2/app/modules/growth/growth_store.dart';
// import 'package:universo_prematuro_v2/app/modules/news/news_store.dart';
// import 'modules/cartilha/cartilha_module.dart';
// import 'modules/growth/material/tip/tip_module.dart';
// import 'modules/growth/material/tip/tip_store.dart';
import 'modules/cartilha/cartilha_Page.dart';
import 'modules/cartilha/cartilha_module.dart';
import 'modules/growth/growth_module.dart';
import 'modules/growth/growth_store.dart';
import 'modules/growth/material/tip/tip_module.dart';
import 'modules/growth/material/tip/tip_store.dart';
import 'modules/home/home_module.dart';
import 'modules/home/home_store.dart';
// import 'modules/home/nav/nav_module.dart';
// import 'modules/home/nav/nav_store.dart';
import 'modules/home/nav/nav_module.dart';
import 'modules/home/nav/nav_store.dart';
import 'modules/initial/auth/auth_module.dart';
import 'modules/initial/auth/auth_store.dart';
import 'modules/initial/initial_module.dart';
import 'modules/initial/initial_store.dart';
import 'modules/news/news_module.dart';
import 'modules/news/news_store.dart';


import 'modules/producoes/producoes_module.dart';
import 'modules/producoes/producoes_store.dart';
import 'modules/profile/edit/edit_module.dart';
import 'modules/profile/edit/edit_store.dart';
import 'modules/profile/edit/photo_store.dart';
import 'modules/profile/photo_album/photoAlbum_module.dart';
import 'modules/profile/photo_album/photoAlbum_store.dart';
import 'modules/profile/profile_module.dart';
import 'modules/profile/profile_store.dart';
import 'modules/profile/video_album/videoAlbum_module.dart';
import 'modules/profile/video_album/videoAlbum_store.dart';
import 'modules/projeto/projeto_module.dart';
import 'modules/projeto/projeto_store.dart';
import 'modules/tasks/conteudo/conteudo_module.dart';
import 'modules/tasks/conteudo/conteudo_store.dart';
import 'modules/tasks/conteudo/denver/lg/lg_module.dart';
import 'modules/tasks/conteudo/denver/lg/lg_store.dart';
import 'modules/tasks/conteudo/denver/mf/mf_module.dart';
import 'modules/tasks/conteudo/denver/mf/mf_store.dart';
import 'modules/tasks/conteudo/denver/mg/mg_module.dart';
import 'modules/tasks/conteudo/denver/mg/mg_store.dart';
import 'modules/tasks/conteudo/denver/ps/ps_module.dart';
import 'modules/tasks/conteudo/denver/ps/ps_store.dart';
import 'modules/tasks/tasks_module.dart';
import 'modules/tasks/tasks_store.dart';




class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
    Bind.lazySingleton((i) => AuthStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => NavBarStore()),
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => EditStore()),
    Bind.lazySingleton((i) => PhotoAlbumStore()),
    Bind.lazySingleton((i) => VideoAlbumStore()),
    Bind.lazySingleton((i) => TasksStore()),
    Bind.lazySingleton((i) => ConteudoStore()),
    Bind.lazySingleton((i) => PhotoStore()),
    Bind.lazySingleton((i) => GrowthStore()),
    Bind.lazySingleton((i) => TipStore()),
    Bind.lazySingleton((i) => ProducoesStore()),
    Bind.lazySingleton((i) => ProjetoStore()),
    Bind.lazySingleton((i) => const CartilhaPage()),
    Bind.lazySingleton((i) => NewsStore()),
    Bind.lazySingleton((i) => PessoalSocialStore()),
    Bind.lazySingleton((i) => LgStore()), 
    Bind.lazySingleton((i) => MgStore()), 
    Bind.lazySingleton((i) => MfStore()), 
    // Bind.instance(APIService.instance)

  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: InitialModule()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/nav', module: NavModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    ModuleRoute('/edit', module: EditModule()),
    ModuleRoute('/photo', module: PhotoAlbumModule()),
    ModuleRoute('/video', module: VideoAlbumModule()),
    ModuleRoute('/conteudo', module: ConteudoModule()),
    ModuleRoute('/tasks', module: TasksModule()),
    ModuleRoute('/growth', module: GrowthModule()),
    ModuleRoute('/tip', module: TipModule()),
    ModuleRoute('/producoes', module: ProducoesModule()),
    ModuleRoute('/projeto', module: ProjetoModule()),
    ModuleRoute('/cartilha', module: CartilhaModule()),
    ModuleRoute('/news', module: NewsModule()),
    ModuleRoute('/ps', module: PSModule()),
    ModuleRoute('/lg', module: LgModule()),
    ModuleRoute('/mg', module: MgModule()),
    ModuleRoute('/mf', module: MfModule()),

  ];

}

