// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:video_player/video_player.dart';
// import 'package:file_picker/file_picker.dart';

part 'videoAlbum_store.g.dart';

class VideoAlbumStore = _VideoAlbumStoreBase with _$VideoAlbumStore;
abstract class _VideoAlbumStoreBase with Store {

  FirebaseStorage storage = FirebaseStorage.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;


  @observable
  List<UploadTask> uploadedTasks = [];

  @observable
  List<File> selectedFiles = [];

  @observable
  String? idLogado;

  @action
  uploadFiles(File file) { 
    UploadTask task = storage
      .ref()
      .child("video/${DateTime.now().toString()}")
      .putFile(file);
    return task;
  }

  @action
  Future recoverVideos() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? usuarioLogado = auth.currentUser;
    idLogado = usuarioLogado!.uid;

    QuerySnapshot<Map<String, dynamic>> snap = await db.collection("users").doc(idLogado).collection("video").get();
    Map dados = snap.docs as Map;
    selectedFiles = dados["video"];
  }

  @action
  Future selectFile() async {
    // ImagePicker picker = ImagePicker();
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true, type: FileType.video);

      if(result != null) {
        selectedFiles.clear();
        for (var selectedFile in result.files) {
          File file = File(selectedFile.path!);
          selectedFiles.add(file);
        }

        for (var file in selectedFiles) { 
          final UploadTask task = uploadFiles(file);
          saveImageUrlDB(task);
          uploadedTasks.add(task);
        }
      } else {
        if (kDebugMode) {
          print("Usuario cancelou");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
   

  @action
  saveImageUrlDB(UploadTask task) {
    task.snapshotEvents.listen((snapShot) {
      if(snapShot.state == TaskState.success) {
        snapShot.ref.getDownloadURL().then((videoUrl) => writeImageToFireStore(videoUrl));
      }
    });
  }

  @action
  writeImageToFireStore(videoUrl) {
    FirebaseAuth auth = FirebaseAuth.instance;
    idLogado = auth.currentUser!.uid;
    db.collection("users").doc(idLogado).collection("video").add({"url": videoUrl}).whenComplete(() => print("$videoUrl is save"));
  }

}
  
  
  
  
  
  
  

  






// CameraController _cameraController = CameraController(CameraDescription(name: 'camera', lensDirection: CameraLensDirection.external, sensorOrientation: 2), ResolutionPreset.max);
  // late VideoPlayerController _videoPlayerController;

  // @observable
  // bool isRecording = false;

  // @observable
  // bool isVideoSelected = false;

  // @observable
  // String? videoPath;

  // @action
  // Future<void> toggleRecording() async {
  //   if (isRecording) {
  //     await _cameraController.stopVideoRecording();
  //     isRecording = false;
  //   } else {
  //     final path = '${DateTime.now().millisecondsSinceEpoch}.mp4';
  //     await _cameraController.startVideoRecording();
  //     videoPath = path;
  //     isRecording = true;
  //   }
  // }

  // @action
  // Future<void> selectVideo() async {
  //   final result = await FilePicker.platform.pickFiles(type: FileType.video);
  //   if (result != null) {
  //     final videoFile = File(result.files.single.path!);
  //     _videoPlayerController = VideoPlayerController.file(videoFile);
  //     await _videoPlayerController.initialize();
  //     isVideoSelected = true;
  //   }
  // }

  // void initCameraController(CameraController cameraController) {
  //   _cameraController = cameraController;
  // }

  // void disposeCameraController() {
  //   _cameraController.dispose();
  // }

  // void disposeVideoPlayerController() {
  //   _videoPlayerController.dispose();
  // }

  // Widget getCameraPreview() {
  //   return Observer(
  //     builder: (_) {
  //       if (_cameraController == null || !_cameraController.value.isInitialized) {
  //         return Container();
  //       }
  //       return CameraPreview(_cameraController);
  //     },
  //   );
  // }

  // Widget getVideoPlayer() {
  //   return Observer(
  //     builder: (_) {
  //       if (_videoPlayerController == null || !_videoPlayerController.value.isInitialized) {
  //         return Container();
  //       }
  //       return AspectRatio(
  //         aspectRatio: _videoPlayerController.value.aspectRatio,
  //         child: VideoPlayer(_videoPlayerController),
  //       );
  //     },
  //   );
  // }