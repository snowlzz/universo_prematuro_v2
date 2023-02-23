// ignore_for_file: file_names

import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/video_album/videoAlbum_store.dart';
import 'package:flutter/material.dart';

class VideoAlbumPage extends StatefulWidget {
  final String title;
  const VideoAlbumPage({Key? key, this.title = 'VideoAlbumPage'}) : super(key: key);
  @override
  VideoAlbumPageState createState() => VideoAlbumPageState();
}
class VideoAlbumPageState extends State<VideoAlbumPage> {
  final VideoAlbumStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}