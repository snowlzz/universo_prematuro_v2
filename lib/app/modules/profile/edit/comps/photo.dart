import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/photo_store.dart';


class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  final PhotoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 5),
        child: Center(
          child: Observer(
            builder: (_) {
              return CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(store.photoURL),
              );
            },
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            child: const Text("Câmera", style: TextStyle(color: Colors.white)),
            onPressed: () {
              store.selectPhoto("camera");
            },
          ),
          TextButton(
            child: const Text("Galeria", style: TextStyle(color: Colors.white)),
            onPressed: () {
              store.selectPhoto("galeria");
            },
          ),
        ],
      )
    ]);
  }
}


class PhotoMom extends StatefulWidget {
  const PhotoMom({super.key});

  @override
  State<PhotoMom> createState() => _PhotoMomState();
}

class _PhotoMomState extends State<PhotoMom> {
  final PhotoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 5),
        child: Center(
          child: Observer(
            builder: (_) {
              return CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(store.momURL),
              );
            },
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            child: const Text("Câmera", style: TextStyle(color: Colors.white)),
            onPressed: () {
              store.selectMomPhoto("camera");
            },
          ),
          TextButton(
            child: const Text("Galeria", style: TextStyle(color: Colors.white)),
            onPressed: () {
              store.selectMomPhoto("galeria");
            },
          ),
        ],
      )
    ]);
  }
}
