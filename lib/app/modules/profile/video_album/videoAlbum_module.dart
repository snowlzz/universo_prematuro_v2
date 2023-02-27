// ignore_for_file: file_names

import 'package:universo_prematuro_v2/app/modules/profile/video_album/videoAlbum_page.dart';
import 'package:universo_prematuro_v2/app/modules/profile/video_album/videoAlbum_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class VideoAlbumModule extends Module {


  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => VideoAlbumStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => VideoAlbumPage()),
  ];
}
