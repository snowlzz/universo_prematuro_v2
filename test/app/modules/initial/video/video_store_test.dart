// import 'dart:io';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:universo_prematuro_v2/app/modules/profile/video_album/videoAlbum_store.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:video_player/video_player.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:camera/camera.dart';



// class MockCameraController extends Mock implements CameraController {}

// class MockVideoPlayerController extends Mock implements VideoPlayerController {}

// class MockFilePickerResult extends Mock implements FilePickerResult {}

// void main() {
//   late VideoAlbumStore videoAlbumStore;
//   late MockCameraController mockCameraController;
//   late MockVideoPlayerController mockVideoPlayerController;

//   setUp(() {
//     videoAlbumStore = VideoAlbumStore();
//     mockCameraController = MockCameraController();
//     mockVideoPlayerController = MockVideoPlayerController();
//   });

//   group('toggleRecording', () {
//     test('should start recording when isRecording is false', () async {
//       when(mockCameraController.startVideoRecording()).thenAnswer((_) => Future.value());
//       videoAlbumStore.initCameraController(mockCameraController);
//       await videoAlbumStore.toggleRecording();
//       expect(videoAlbumStore.isRecording, true);
//       verify(mockCameraController.startVideoRecording()).called(1);
//     });

//     test('should stop recording when isRecording is true', () async {
//       when(mockCameraController.stopVideoRecording()).thenAnswer((_) => Future.value());
//       videoAlbumStore.initCameraController(mockCameraController);
//       videoAlbumStore.isRecording = true;
//       await videoAlbumStore.toggleRecording();
//       expect(videoAlbumStore.isRecording, false);
//       verify(mockCameraController.stopVideoRecording()).called(1);
//     });
//   });

//   group('selectVideo', () {
//     test('should set isVideoSelected to true when a video is selected', () async {
//       final mockFilePickerResult = MockFilePickerResult();
//       when(mockFilePickerResult.files).thenReturn([PlatformFile(path: '/test.mp4', name: '', size: 2)]);
//       // when(mockFilePickerResult.type).thenReturn(FileType.video);
//       when(FilePicker.platform.pickFiles(type: FileType.video)).thenAnswer((_) => Future.value(mockFilePickerResult));
//       when(mockVideoPlayerController.initialize()).thenAnswer((_) => Future.value());
//       when(mockVideoPlayerController.value).thenReturn(VideoPlayerValue(duration: Duration(seconds: 10)));
//       await videoAlbumStore.selectVideo();
//       expect(videoAlbumStore.isVideoSelected, true);
//       verify(FilePicker.platform.pickFiles(type: FileType.video)).called(1);
//     });

//     test('should not set isVideoSelected when no video is selected', () async {
//       when(FilePicker.platform.pickFiles(type: FileType.video)).thenAnswer((_) => Future.value(null));
//       await videoAlbumStore.selectVideo();
//       expect(videoAlbumStore.isVideoSelected, false);
//       verify(FilePicker.platform.pickFiles(type: FileType.video)).called(1);
//     });
//   });

//   group('dispose', () {
//     test('should dispose CameraController and VideoPlayerController', () async {
//       videoAlbumStore.initCameraController(mockCameraController);
//       await videoAlbumStore.selectVideo();
//       videoAlbumStore.disposeCameraController();
//       videoAlbumStore.disposeVideoPlayerController();
//       verify(mockCameraController.dispose()).called(1);
//       verify(mockVideoPlayerController.dispose()).called(1);
//     });
//   });
// }

