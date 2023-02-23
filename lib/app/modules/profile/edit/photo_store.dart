// ignore_for_file: prefer_final_fields, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';


import 'package:mobx/mobx.dart';
part 'photo_store.g.dart';

class PhotoStore = _PhotoStoreBase with _$PhotoStore;

abstract class _PhotoStoreBase with Store {

  FirebaseAuth _auth = FirebaseAuth.instance;


  FirebaseStorage storage = FirebaseStorage.instance;

  @observable
  XFile? kidPhoto;

  @observable
  bool upload = false;

  @observable
  String photoURL = "";

  @observable
  XFile? momPhoto;

  @observable
  String momURL = "";

  @observable
  String? idLogado;

  @action
  Future selectPhoto(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? selectedPhoto;

    if (origem == "camera") {
      selectedPhoto = await _picker.pickImage(source: ImageSource.camera);

      kidPhoto = selectedPhoto;

      if (kidPhoto != null) {
        uploadPhoto();
        upload = true;
      }
    } else if (origem == "galeria") {
      selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);

      kidPhoto = selectedPhoto;

      if (kidPhoto != null) {
        uploadPhoto();
        upload = true;
      }
    }
  }
  Future uploadPhoto() async {

    User usuarioLogado = _auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(kidPhoto!.path);

    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child("perfil").child("kid.jpg");
    UploadTask task = arquivo.putFile(file);

    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload = true;
      } else if (storageEvent.state == TaskState.success){
        upload = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recoveryPhotoURL(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));

    
  }

  Future recoveryPhotoURL(TaskSnapshot taskSnapshot) async {
    String url = await taskSnapshot.ref.getDownloadURL();
    photoURL = url;
  }

  Future recoveryMomURL(TaskSnapshot taskSnap) async {
    String url = await taskSnap.ref.getDownloadURL();
    momURL = url;
  }

  Future selectMomPhoto(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? selectedPhoto;
    if(origem == "camera"){
      selectedPhoto = await _picker.pickImage(source: ImageSource.camera);
      momPhoto = selectedPhoto;
      if(momPhoto != null){
        uploadMomPhoto();
        upload = true;
      }
    } else if (origem == "galeria"){
        selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);
        momPhoto = selectedPhoto;
        if(momPhoto != null){
          uploadMomPhoto();
          upload= true;
      }
    }
  }

  Future uploadMomPhoto() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(momPhoto!.path);
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child("perfil").child("$idLogado.jpg");
    UploadTask task = arquivo.putFile(file);
    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload = true;
      } else if (storageEvent.state == TaskState.success){
        upload = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recoveryMomURL(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));
  }
}
