// // ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class VideoScreen extends StatefulWidget {
  final String id;
  VideoScreen({required this.id});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () => print('ready'),
      ),
    );
  }
}









// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// import '../models/video_model.dart';

// class VideoScreen extends StatefulWidget {
//   final String id;

//   const VideoScreen({super.key, required this.id});

//   @override
//   _VideoScreenState createState() => _VideoScreenState();
// }

// class _VideoScreenState extends State<VideoScreen> {
//   late YoutubePlayerController _controller;
//   Video video = Video();
//   List<String> url = [
//     'Ssi1DIKiZYA' //9
//         'jRVUh8HwFZw' //8
//         'QaSWOzzfLCM' //7
//         'LXLKjJSREBo' //6
//         'k6Ohn3eFofM' //5
//         'tnCUfb_6cps' //4
//         'p9XzU3nOZK8' //3
//         'SZxxlJvmhV8' //2
//         'a9SkjRQeeeA'//1

//         'AXbCS3DYCZI',
//     'a9SkjRQeeeA',
//   ];

//   // .map<YoutubePlayerController>(
//   //     (videoId) => YoutubePlayerController(
//   //       initialVideoId: videoId,
//   //       flags: const YoutubePlayerFlags(
//   //         autoPlay: false,
//   //       ),
//   //     ),
//   //   )
//   //   .toList();

//   // String? videoId;

//   @override
//   void initState() {
//     super.initState();
//     for (String id in url) {
//       switch (id) {
//         case 'Ssi1DIKiZYA':
//           video.id = 'Ssi1DIKiZYA';
//           break;
//         case 'jRVUh8HwFZw':
//           video.id = 'jRVUh8HwFZw';
//           break;
//       }

//       _controller = YoutubePlayerController(
//         initialVideoId: id,
//         flags: const YoutubePlayerFlags(
//           mute: false,
//           autoPlay: false,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         onReady: () {
//           if (kDebugMode) {
//             print('Player is ready.');
//           }
//         },
//       ),
//     );
//   }
// }
