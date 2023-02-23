// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditStore on _EditStoreBase, Store {
  late final _$idLogadoAtom =
      Atom(name: '_EditStoreBase.idLogado', context: context);

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

  late final _$genderAtom =
      Atom(name: '_EditStoreBase.gender', context: context);

  @override
  String? get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String? value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  late final _$controllerKidNameAtom =
      Atom(name: '_EditStoreBase.controllerKidName', context: context);

  @override
  TextEditingController get controllerKidName {
    _$controllerKidNameAtom.reportRead();
    return super.controllerKidName;
  }

  @override
  set controllerKidName(TextEditingController value) {
    _$controllerKidNameAtom.reportWrite(value, super.controllerKidName, () {
      super.controllerKidName = value;
    });
  }

  late final _$controllerKidBirthAtom =
      Atom(name: '_EditStoreBase.controllerKidBirth', context: context);

  @override
  TextEditingController get controllerKidBirth {
    _$controllerKidBirthAtom.reportRead();
    return super.controllerKidBirth;
  }

  @override
  set controllerKidBirth(TextEditingController value) {
    _$controllerKidBirthAtom.reportWrite(value, super.controllerKidBirth, () {
      super.controllerKidBirth = value;
    });
  }

  late final _$controllerCorrectedAgeAtom =
      Atom(name: '_EditStoreBase.controllerCorrectedAge', context: context);

  @override
  TextEditingController get controllerCorrectedAge {
    _$controllerCorrectedAgeAtom.reportRead();
    return super.controllerCorrectedAge;
  }

  @override
  set controllerCorrectedAge(TextEditingController value) {
    _$controllerCorrectedAgeAtom
        .reportWrite(value, super.controllerCorrectedAge, () {
      super.controllerCorrectedAge = value;
    });
  }

  late final _$correctedAgeAtom =
      Atom(name: '_EditStoreBase.correctedAge', context: context);

  @override
  int get correctedAge {
    _$correctedAgeAtom.reportRead();
    return super.correctedAge;
  }

  @override
  set correctedAge(int value) {
    _$correctedAgeAtom.reportWrite(value, super.correctedAge, () {
      super.correctedAge = value;
    });
  }

  late final _$controllerCEPAtom =
      Atom(name: '_EditStoreBase.controllerCEP', context: context);

  @override
  TextEditingController get controllerCEP {
    _$controllerCEPAtom.reportRead();
    return super.controllerCEP;
  }

  @override
  set controllerCEP(TextEditingController value) {
    _$controllerCEPAtom.reportWrite(value, super.controllerCEP, () {
      super.controllerCEP = value;
    });
  }

  late final _$controllerPhoneAtom =
      Atom(name: '_EditStoreBase.controllerPhone', context: context);

  @override
  TextEditingController get controllerPhone {
    _$controllerPhoneAtom.reportRead();
    return super.controllerPhone;
  }

  @override
  set controllerPhone(TextEditingController value) {
    _$controllerPhoneAtom.reportWrite(value, super.controllerPhone, () {
      super.controllerPhone = value;
    });
  }

  late final _$resultAtom =
      Atom(name: '_EditStoreBase.result', context: context);

  @override
  String? get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String? value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$saveDataToFirebaseAsyncAction =
      AsyncAction('_EditStoreBase.saveDataToFirebase', context: context);

  @override
  Future<void> saveDataToFirebase() {
    return _$saveDataToFirebaseAsyncAction
        .run(() => super.saveDataToFirebase());
  }

  late final _$_EditStoreBaseActionController =
      ActionController(name: '_EditStoreBase', context: context);

  @override
  void calculateCorrectedAge() {
    final _$actionInfo = _$_EditStoreBaseActionController.startAction(
        name: '_EditStoreBase.calculateCorrectedAge');
    try {
      return super.calculateCorrectedAge();
    } finally {
      _$_EditStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
idLogado: ${idLogado},
gender: ${gender},
controllerKidName: ${controllerKidName},
controllerKidBirth: ${controllerKidBirth},
controllerCorrectedAge: ${controllerCorrectedAge},
correctedAge: ${correctedAge},
controllerCEP: ${controllerCEP},
controllerPhone: ${controllerPhone},
result: ${result}
    ''';
  }
}
