import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/components/tabs.dart';
import 'package:universo_prematuro_v2/app/modules/profile/profile_store.dart';
import 'package:flutter/material.dart';

import 'components/profile_card.dart';
import 'edit/edit_store.dart';
import 'photo_album/photoAlbum_store.dart';
import 'video_album/videoAlbum_store.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'Perfil'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  final ProfileStore store = Modular.get();
  final EditStore eStore = Modular.get();
  bool isOpened = false;

  late AnimationController _animationController;
  late Animation<double> _animationIcon;
  late Animation<double> _translateButton;
  final Curve _curve = Curves.easeOut;
  final double _fabHeight = 56.0;
  final PhotoAlbumStore phStore = Modular.get();
  final VideoAlbumStore vStore = Modular.get();

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });

    _animationIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

        

    _translateButton = Tween<double>(begin: _fabHeight, end: -14.0).animate(
        CurvedAnimation(
            parent: _animationController, curve: Interval(0.0, 0.75, curve: _curve)));
    eStore.recoverDataFromFirebase();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget buttonPhoto() {
    return FloatingActionButton(
      onPressed: () {
        phStore.selectFile();
      },
      tooltip: "add",
      child: const Icon(Icons.photo_camera),
    );
  }
  Widget buttonVideo() {
    return FloatingActionButton(
      onPressed: () {
        vStore.selectFile();
      },
      tooltip: "add",
      child: const Icon(Icons.video_camera_back_outlined),
    );
  }
  
  Widget buttonToggle() {
    return FloatingActionButton(
      onPressed: animate,
      tooltip: "add",
      child: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: _animationIcon),
    );
  }

  void animate() {
   if(!isOpened) {
     _animationController.forward();
   } else {
     _animationController.reverse();
   }
  isOpened = !isOpened;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                child: LayoutBuilder(builder: (_, constraints) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [ProfileCard(), GalleryTabs()],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Transform(
              transform: Matrix4.translationValues(
                  0.0, _translateButton.value * 2.0, 0.0),
              child: buttonPhoto(),
            ),
            // SizedBox(height: 10),
            Transform(
              transform: Matrix4.translationValues(
                  0.0, _translateButton.value * 1.0, 0.0),
              child: buttonVideo(),
            ),
            // SizedBox(height: 10),

            buttonToggle()
          ],
        ));
  }
}
