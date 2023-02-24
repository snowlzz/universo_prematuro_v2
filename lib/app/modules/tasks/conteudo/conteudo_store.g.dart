// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conteudo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConteudoStore on _ConteudoStoreBase, Store {
  late final _$uidAtom = Atom(name: '_ConteudoStoreBase.uid', context: context);

  @override
  String? get uid {
    _$uidAtom.reportRead();
    return super.uid;
  }

  @override
  set uid(String? value) {
    _$uidAtom.reportWrite(value, super.uid, () {
      super.uid = value;
    });
  }

  late final _$createDenverDataAsyncAction =
      AsyncAction('_ConteudoStoreBase.createDenverData', context: context);

  @override
  Future createDenverData() {
    return _$createDenverDataAsyncAction.run(() => super.createDenverData());
  }

  late final _$answersToNullAsyncAction =
      AsyncAction('_ConteudoStoreBase.answersToNull', context: context);

  @override
  Future<void> answersToNull() {
    return _$answersToNullAsyncAction.run(() => super.answersToNull());
  }

  @override
  String toString() {
    return '''
uid: ${uid}
    ''';
  }
}
