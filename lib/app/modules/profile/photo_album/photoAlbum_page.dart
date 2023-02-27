// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';
import 'package:universo_prematuro_v2/app/modules/profile/photo_album/photoAlbum_store.dart';

class PhotoAlbumPage extends StatefulWidget {
  final String title;
  const PhotoAlbumPage({Key? key, this.title = 'PhotoAlbumPage'})
      : super(key: key);
  @override
  PhotoAlbumPageState createState() => PhotoAlbumPageState();
}

class PhotoAlbumPageState extends State<PhotoAlbumPage> {
  final PhotoAlbumStore store = Modular.get();
  FirebaseFirestore db = FirebaseFirestore.instance;


  @override
  void initState() {
    store.recoverPhotos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: const EdgeInsets.all(8),
            child: StreamBuilder<QuerySnapshot>(
                stream: db.collection("users").doc(store.idLogado).collection("images").snapshots(),
                builder: (context, snapshots) {
                  return snapshots.hasError
                      ? const Center(child: CircularProgressIndicator())
                      : snapshots.hasData
                          ? GridView.count(
                              crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 0.5,
                              children: snapshots.data!.docs
                                  .map((e) => Image.network(e.get("url")))
                                  .toList()
                            )
                          : Container();
                }))
       
    );
  }
}
