// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStoreBase, Store {
  late final _$idLogadoAtom =
      Atom(name: '_AuthStoreBase.idLogado', context: context);

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

  late final _$controllerNameAtom =
      Atom(name: '_AuthStoreBase.controllerName', context: context);

  @override
  TextEditingController get controllerName {
    _$controllerNameAtom.reportRead();
    return super.controllerName;
  }

  @override
  set controllerName(TextEditingController value) {
    _$controllerNameAtom.reportWrite(value, super.controllerName, () {
      super.controllerName = value;
    });
  }

  late final _$controllerEmailAtom =
      Atom(name: '_AuthStoreBase.controllerEmail', context: context);

  @override
  TextEditingController get controllerEmail {
    _$controllerEmailAtom.reportRead();
    return super.controllerEmail;
  }

  @override
  set controllerEmail(TextEditingController value) {
    _$controllerEmailAtom.reportWrite(value, super.controllerEmail, () {
      super.controllerEmail = value;
    });
  }

  late final _$controllerPassAtom =
      Atom(name: '_AuthStoreBase.controllerPass', context: context);

  @override
  TextEditingController get controllerPass {
    _$controllerPassAtom.reportRead();
    return super.controllerPass;
  }

  @override
  set controllerPass(TextEditingController value) {
    _$controllerPassAtom.reportWrite(value, super.controllerPass, () {
      super.controllerPass = value;
    });
  }

  late final _$registerInFirebaseAsyncAction =
      AsyncAction('_AuthStoreBase.registerInFirebase', context: context);

  @override
  Future<void> registerInFirebase({String? email, String? pass}) {
    return _$registerInFirebaseAsyncAction
        .run(() => super.registerInFirebase(email: email, pass: pass));
  }

  late final _$saveDataToFirebaseAsyncAction =
      AsyncAction('_AuthStoreBase.saveDataToFirebase', context: context);

  @override
  Future<void> saveDataToFirebase() {
    return _$saveDataToFirebaseAsyncAction
        .run(() => super.saveDataToFirebase());
  }

  @override
  String toString() {
    return '''
idLogado: ${idLogado},
controllerName: ${controllerName},
controllerEmail: ${controllerEmail},
controllerPass: ${controllerPass}
    ''';
  }
}
