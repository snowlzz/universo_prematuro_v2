// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PhotoStore on _PhotoStoreBase, Store {
  late final _$kidPhotoAtom =
      Atom(name: '_PhotoStoreBase.kidPhoto', context: context);

  @override
  XFile? get kidPhoto {
    _$kidPhotoAtom.reportRead();
    return super.kidPhoto;
  }

  @override
  set kidPhoto(XFile? value) {
    _$kidPhotoAtom.reportWrite(value, super.kidPhoto, () {
      super.kidPhoto = value;
    });
  }

  late final _$uploadAtom =
      Atom(name: '_PhotoStoreBase.upload', context: context);

  @override
  bool get upload {
    _$uploadAtom.reportRead();
    return super.upload;
  }

  @override
  set upload(bool value) {
    _$uploadAtom.reportWrite(value, super.upload, () {
      super.upload = value;
    });
  }

  late final _$photoURLAtom =
      Atom(name: '_PhotoStoreBase.photoURL', context: context);

  @override
  String get photoURL {
    _$photoURLAtom.reportRead();
    return super.photoURL;
  }

  @override
  set photoURL(String value) {
    _$photoURLAtom.reportWrite(value, super.photoURL, () {
      super.photoURL = value;
    });
  }

  late final _$momPhotoAtom =
      Atom(name: '_PhotoStoreBase.momPhoto', context: context);

  @override
  XFile? get momPhoto {
    _$momPhotoAtom.reportRead();
    return super.momPhoto;
  }

  @override
  set momPhoto(XFile? value) {
    _$momPhotoAtom.reportWrite(value, super.momPhoto, () {
      super.momPhoto = value;
    });
  }

  late final _$momURLAtom =
      Atom(name: '_PhotoStoreBase.momURL', context: context);

  @override
  String get momURL {
    _$momURLAtom.reportRead();
    return super.momURL;
  }

  @override
  set momURL(String value) {
    _$momURLAtom.reportWrite(value, super.momURL, () {
      super.momURL = value;
    });
  }

  late final _$idLogadoAtom =
      Atom(name: '_PhotoStoreBase.idLogado', context: context);

  @override
  String? get idLogado {
    _$idLogadoAtom.reportRead();
    return super.idLogado;
  }

  @override
  set idLogado(String? value) {
    _$idLogadoAtom.reportWrite(value, super.idLogado, () {
      super.idLogado = value;
    });
  }

  late final _$selectPhotoAsyncAction =
      AsyncAction('_PhotoStoreBase.selectPhoto', context: context);

  @override
  Future<dynamic> selectPhoto(String origem) {
    return _$selectPhotoAsyncAction.run(() => super.selectPhoto(origem));
  }

  @override
  String toString() {
    return '''
kidPhoto: ${kidPhoto},
upload: ${upload},
photoURL: ${photoURL},
momPhoto: ${momPhoto},
momURL: ${momURL},
idLogado: ${idLogado}
    ''';
  }
}
