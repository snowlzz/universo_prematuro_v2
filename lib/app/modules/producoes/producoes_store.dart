// // ignore_for_file: library_private_types_in_public_api, unnecessary_null_comparison

// import 'package:mobx/mobx.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// // import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// import '../models/channel_model.dart';
// import '../models/video_model.dart';
// import '../services/yt_api_service.dart';

// part 'producoes_store.g.dart';

// class ProducoesStore = _ProducoesStoreBase with _$ProducoesStore;
// abstract class _ProducoesStoreBase with Store {

//   @observable
//   bool _isLoading = false;

//   @observable
//   Channel? _channel;

//   @observable
//   late YoutubePlayerController controller;

//   initChannel(Video video) async {
//     Channel channel = await APIService.instance.fetchChannel(channelId: 'UCI8fBFZtG6rwQfoQB-NfPuA');
//     _channel = channel;
//   }

  

//   @action
//   loadMorevideos() async {
//     _isLoading = true;
//     List<Video> moreVideos = await APIService.instance.fetchVideosFromPlaylist(playlistId: _channel!.uploadPlaylistId!);
//     List<Video> allVideos = _channel!.videos!..addAll(moreVideos);
//     if(allVideos != null){
//       _channel!.videos = allVideos;
//     }
//     _isLoading = false;
//     return false;
//   }

  
// }