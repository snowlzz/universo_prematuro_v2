

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:universo_prematuro_v2/app/modules/models/channel_model.dart';
import 'package:universo_prematuro_v2/app/modules/models/video_model.dart';


import '../../utilities/youtube_key.dart';


class APIService {
  APIService._instantiate();

  static final APIService instance = APIService._instantiate();

  final String _baseUrl = 'www.googleapis.com';
  String _nextPageToken = '';

  Future<Channel> fetchChannel({required String channelId}) async {
    Map<String, String> parameters = {
      'part': 'snippet, contentDetails, statistics',
      'id': channelId,
      'key': YOUTUBE_API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/channels',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    // Get Channel
    var response = await http.get(uri, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body)['items'][0];
      Channel channel = Channel.fromMap(data);

      // Fetch first batch of videos from uploads playlist
      channel.videos = await fetchVideosFromPlaylist(
        playlistId: channel.uploadPlaylistId ?? "",
      );
      return channel;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }

  Future<List<Video>> fetchVideosFromPlaylist({required String playlistId}) async {
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playlistId,
      'maxResults': '8',
      'pageToken': _nextPageToken,
      'key': YOUTUBE_API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/playlistItems',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    // Get Playlist Videos
    var response = await http.get(uri, headers: headers);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      _nextPageToken = data['nextPageToken'] ?? '';
      List<dynamic> videosJson = data['items'];

      // Fetch first eight videos from uploads playlist
      List<Video> videos = [];
      for (var json in videosJson) {
        videos.add(
          Video.fromMap(json['snippet']),
        );
      }
      return videos;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }

}










// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:googleapis/youtube/v3.dart';
// import 'package:googleapis_auth/googleapis_auth.dart' as auth;

// import '../../utilities/youtube_key.dart';

// class YoutubeApi {
//   static const _scopes = [YoutubeApi.youtubeReadonlyScope];
//   static const _apiKey = String.fromEnvironment(YOUTUBE_API_KEY);

//   static const youtubeReadonlyScope =
//       'https://www.googleapis.com/auth/youtube.readonly';

//   // static Future<auth.AutoRefreshingAuthClient> createClient() async {
//   //   final apiKeyClient = auth.ApiKeyClient(dotenv.get('YOUTUBE_API_KEY'),
//   //   );
//   //   final client = await apiKeyClient.clientViaApiKey(_apiKey, scopes: _scopes);
//   //   return client;
//   // }

//   static Future<auth.AutoRefreshingAuthClient> createClient() async {
//     final apiKey = dotenv.get(YOUTUBE_API_KEY);
//     final client = await auth.clientViaApiKey(apiKey);
//     return client as auth.AutoRefreshingAuthClient;
// }

//   static Future<YoutubeApi> create() async {
//     final client = await createClient();
//     return YoutubeApi(client);
//   }

//   final YouTubeApi youtube;
//   final auth.AutoRefreshingAuthClient client;

//   YoutubeApi(this.client)
//       : youtube = YouTubeApi(client);
// }


// // // ignore_for_file: depend_on_referenced_packages

