import 'package:universo_prematuro_v2/app/modules/profile/photo_album/photoAlbum_page.dart';
import 'package:universo_prematuro_v2/app/modules/profile/photo_album/photoAlbum_store.dart';
import 'package:universo_prematuro_v2/app/modules/profile/profile_page.dart';
import 'package:universo_prematuro_v2/app/modules/profile/profile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/video_album/videoAlbum_page.dart';
import 'package:universo_prematuro_v2/app/modules/profile/video_album/videoAlbum_store.dart';

import 'edit/edit_page.dart';
import 'edit/edit_store.dart';
import 'edit/photo_store.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => EditStore()),
    Bind.lazySingleton((i) => PhotoAlbumStore()),
    Bind.lazySingleton((i) => VideoAlbumStore()),
    Bind.lazySingleton((i) => PhotoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ProfilePage()),
    ChildRoute('/edit', child: (_, args) => const EditPage()),
    ChildRoute('/photo', child: (_, args) => const PhotoAlbumPage()),
    ChildRoute('/video', child: (_, args) => const VideoAlbumPage()),
  ];
}
