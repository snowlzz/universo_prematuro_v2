// // ignore_for_file: library_private_types_in_public_api

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

//     'AXbCS3DYCZI',
//     'a9SkjRQeeeA',
//   ];

//     // .map<YoutubePlayerController>(
//     //     (videoId) => YoutubePlayerController(
//     //       initialVideoId: videoId,
//     //       flags: const YoutubePlayerFlags(
//     //         autoPlay: false,
//     //       ),
//     //     ),
//     //   )
//     //   .toList();
    
//     // String? videoId;


//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: 'AXbCS3DYCZI',
//       flags: const YoutubePlayerFlags(
        
//         mute: false,
//         autoPlay: false,
//       ),
//     );
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