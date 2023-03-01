

import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../models/channel_model.dart';
import '../models/video_model.dart';
import '../services/yt_api_service.dart';
import 'package:http/http.dart' as http;

part 'producoes_store.g.dart';

class ProducoesStore = _ProducoesStoreBase with _$ProducoesStore;
abstract class _ProducoesStoreBase with Store {

  @observable
  bool _isLoading = false;

  @observable
  Channel? _channel;

  // @observable
  // YoutubeApi? _youtubeApi;

  @observable
  String channelId = 'UCI8fBFZtG6rwQfoQB-NfPuA';

  @observable
  ObservableList<Video> _videos = ObservableList<Video>();

  @observable
  late YoutubePlayerController controller;

  // @action
  // Future<void> loadVideos() async {
  //   try {
  //     final apiKey = 'AIzaSyBTOL_mPcbbMHYWhNNcXuN9VrUjyMuU7bo';
  //     final url = Uri.parse(
  //         'https://www.googleapis.com/youtube/v3/search?key=$apiKey&channelId=${channelId}&part=snippet,id&order=date&maxResults=20');
  //     final response = await http.get(url);
  //     final data = json.decode(response.body);

  //     final videos = data['items'] as List<dynamic>;
  //     _videos.addAll(videos.map((video) => Video.fromVideo(Video.fromMap(video) as Map<String, dynamic>)));
  //   } catch (e) {
  //     print('Error loading videos: $e');
  //   }
  // }

  // initChannel(Video video) async {
  //   Channel channel = await APIService.instance.fetchChannel(channelId: 'UCI8fBFZtG6rwQfoQB-NfPuA');
  //   _channel = channel;
  // }

  

  // @action
  // loadMorevideos() async {
  //   _isLoading = true;
  //   List<Video> moreVideos = await APIService.instance.fetchVideosFromPlaylist(playlistId: _channel!.uploadPlaylistId!);
  //   List<Video> allVideos = _channel!.videos!..addAll(moreVideos);
  //   if(allVideos != null){
  //     _channel!.videos = allVideos;
  //   }
  //   _isLoading = false;
  //   return false;
  // }

  
}