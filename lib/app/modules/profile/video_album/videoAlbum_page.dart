// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';
import 'package:universo_prematuro_v2/app/modules/profile/video_album/videoAlbum_store.dart';

class VideoAlbumPage extends StatefulWidget {
  final String title;
  const VideoAlbumPage({Key? key, this.title = 'VideoAlbumPage'}) : super(key: key);
  @override
  VideoAlbumPageState createState() => VideoAlbumPageState();
}
class VideoAlbumPageState extends State<VideoAlbumPage> {
  final VideoAlbumStore store = Modular.get();
  FirebaseFirestore db = FirebaseFirestore.instance;


  @override
  void initState() {
    store.recoverVideos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: const EdgeInsets.all(8),
            child: StreamBuilder<QuerySnapshot>(
                stream: db.collection("users").doc(store.idLogado).collection("video").snapshots(),
                builder: (context, snapshots) {
                  return snapshots.hasError
                      ? const Center(child: Text("error"))
                      : snapshots.hasData
                          ? GridView.count(
                              crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1,
                              children: snapshots.data!.docs
                                  .map((e) => Image.network(e.get("url")))
                                  .toList(),
                            )
                          : Container();
                }))
       
    );
  }
}


// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:video_player/video_player.dart';
// import 'package:file_picker/file_picker.dart';

// class VideoPlayerScreen extends StatefulWidget {
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   List<File> videos = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Lista de Vídeos'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 50,
//             child: ElevatedButton(
//               onPressed: () async {
//                 final result = await FilePicker.platform.pickFiles(
//                   type: FileType.video,
//                   allowMultiple: true,
//                 );
//                 if (result != null) {
//                   setState(() {
//                     videos.addAll(result.paths.map((path) => File(path!)).toList());
//                   });
//                 }
//               },
//               child: Text('Adicionar Vídeo'),
//             ),
//           ),
//           Expanded(
//             child: Observer(
//               builder: (_) {
//                 return ListView.builder(
//                   itemCount: videos.length,
//                   itemBuilder: (context, index) {
//                     return VideoListItem(
//                       file: videos[index],
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class VideoListItem extends StatefulWidget {
//    late final File file;

//   VideoListItem({Key? key, File? file}) : super(key: key);

//   @override
//   _VideoListItemState createState() => _VideoListItemState();
// }

// class _VideoListItemState extends State<VideoListItem> {
//   late VideoPlayerController _controller;
//   // late File file;

//   @override
//   void initState() {
//     super.initState();

//     _controller = VideoPlayerController.file()..initialize();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(widget.file.path),
//       subtitle: Text('Duração: ${_controller.value.duration}'),
//       leading: FutureBuilder(
//         future: _controller.initialize(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return AspectRatio(
//               aspectRatio: _controller.value.aspectRatio,
//               child: VideoPlayer(_controller),
//             );
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }