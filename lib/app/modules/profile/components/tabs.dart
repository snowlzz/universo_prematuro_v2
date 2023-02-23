// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../photo_album/photoAlbum_page.dart';
import '../profile_store.dart';
import '../video_album/videoAlbum_page.dart';

class GalleryTabs extends StatelessWidget {
  GalleryTabs({Key? key}) : super(key: key);

  final ProfileStore store = Modular.get();
  // final Function() onPressed;
  // GalleryTabs({required this.onPressed})

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(children: [
              TabBar(
                isScrollable: true,
                controller: store.tabController,
                labelColor: Colors.green,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 1.5, color: Colors.green,),
                  insets: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                indicatorColor: Colors.green,
                tabs: const [
                  Tab(
                    text: "Fotos",
                  ),
                  Tab(
                    text: "Videos",
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * .8,
                child: TabBarView(
                  controller: store.tabController,
                  children: const [
                    PhotoAlbumPage(),

                    VideoAlbumPage()
                    
                    
                    // VideoAlbumPage()
                    
                  ],
                ),
              ),
              
            ]
          )
        )
      );
  }
}
