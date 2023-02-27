// ignore_for_file: unnecessary_null_comparison, prefer_final_fields, unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/producoes/producoes_store.dart';
import 'package:flutter/material.dart';
import 'package:universo_prematuro_v2/app/modules/producoes/video_player.dart';
// ignore: depend_on_referenced_packages


import '../models/channel_model.dart';
import '../models/video_model.dart';

class ProducoesPage extends StatefulWidget {
  final String title;
  const ProducoesPage({Key? key, this.title = 'Produções',}) : super(key: key);
  @override
  ProducoesPageState createState() => ProducoesPageState();
}
class ProducoesPageState extends State<ProducoesPage> {
  final ProducoesStore store = Modular.get();
  Channel? _channel;
  bool _isLoading = false;

  

  @override
  void initState() {
    store.initChannel(Video());
    // Channel _channel;
    super.initState();
    
  }

  

  _buildVideo(Video video) {
    // String id = video.id!;
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (_) => VideoScreen(id: '${video.id}'),
      )),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.all(10),
        height: 140,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 6.0,
          )]
        ),
        child: Row(
          children: [
            Image(
              image: NetworkImage(video.thumbnailUrl!),
              width: 150,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                video.title!,
                style: const TextStyle(
                  color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildProfileInfo() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding:const  EdgeInsets.all(20),
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 1),
          blurRadius: 6.0,
        )]
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            backgroundImage: NetworkImage(_channel!.profilePictureUrl!),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _channel!.title!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,

                ),
                Text(
                  '${_channel!.subscriberCount} Inscritos'
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produções YouTube"),
      ),
      body: _channel != null ? 
         NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollDetails) {
            if (!_isLoading && _channel!.videos!.length != int.parse(_channel!.videoCount!) && scrollDetails.metrics.pixels == scrollDetails.metrics.maxScrollExtent) {
            store.loadMorevideos();
            }
            return false;
          },
           child: ListView.builder(
            itemCount: _channel!.videos!.length,
            itemBuilder: (BuildContext context, index) {
              // YoutubePlayerController ytController = lYTC[index];
            
              if (index == 0){
                return _buildProfileInfo();
              }
              Video video = _channel!.videos![index-1] ;
              return _buildVideo(video);

            }
                 ),
         )
      : Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
        ),
      )
    );
  }
}