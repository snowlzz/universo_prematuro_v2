// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mf_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MfStore on _MfStoreBase, Store {
  late final _$faseAtom = Atom(name: '_MfStoreBase.fase', context: context);

  @override
  String? get fase {
    _$faseAtom.reportRead();
    return super.fase;
  }

  @override
  set fase(String? value) {
    _$faseAtom.reportWrite(value, super.fase, () {
      super.fase = value;
    });
  }

  late final _$answersAtom =
      Atom(name: '_MfStoreBase.answers', context: context);

  @override
  Map<dynamic, dynamic>? get answers {
    _$answersAtom.reportRead();
    return super.answers;
  }

  @override
  set answers(Map<dynamic, dynamic>? value) {
    _$answersAtom.reportWrite(value, super.answers, () {
      super.answers = value;
    });
  }

  late final _$uidAtom = Atom(name: '_MfStoreBase.uid', context: context);

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

  late final _$characterAtom =
      Atom(name: '_MfStoreBase.character', context: context);

  @override
  SingingCharacter? get character {
    _$characterAtom.reportRead();
    return super.character;
  }

  @override
  set character(SingingCharacter? value) {
    _$characterAtom.reportWrite(value, super.character, () {
      super.character = value;
    });
  }

  late final _$qtdRespSimAtom =
      Atom(name: '_MfStoreBase.qtdRespSim', context: context);

  @override
  double get qtdRespSim {
    _$qtdRespSimAtom.reportRead();
    return super.qtdRespSim;
  }

  @override
  set qtdRespSim(double value) {
    _$qtdRespSimAtom.reportWrite(value, super.qtdRespSim, () {
      super.qtdRespSim = value;
    });
  }

  late final _$qtdRespNaoAtom =
      Atom(name: '_MfStoreBase.qtdRespNao', context: context);

  @override
  double get qtdRespNao {
    _$qtdRespNaoAtom.reportRead();
    return super.qtdRespNao;
  }

  @override
  set qtdRespNao(double value) {
    _$qtdRespNaoAtom.reportWrite(value, super.qtdRespNao, () {
      super.qtdRespNao = value;
    });
  }

  late final _$qtdRespParAtom =
      Atom(name: '_MfStoreBase.qtdRespPar', context: context);

  @override
  double get qtdRespPar {
    _$qtdRespParAtom.reportRead();
    return super.qtdRespPar;
  }

  @override
  set qtdRespPar(double value) {
    _$qtdRespParAtom.reportWrite(value, super.qtdRespPar, () {
      super.qtdRespPar = value;
    });
  }

  late final _$qtdRespRecAtom =
      Atom(name: '_MfStoreBase.qtdRespRec', context: context);

  @override
  double get qtdRespRec {
    _$qtdRespRecAtom.reportRead();
    return super.qtdRespRec;
  }

  @override
  set qtdRespRec(double value) {
    _$qtdRespRecAtom.reportWrite(value, super.qtdRespRec, () {
      super.qtdRespRec = value;
    });
  }

  late final _$answerAtom = Atom(name: '_MfStoreBase.answer', context: context);

  @override
  String? get answer {
    _$answerAtom.reportRead();
    return super.answer;
  }

  @override
  set answer(String? value) {
    _$answerAtom.reportWrite(value, super.answer, () {
      super.answer = value;
    });
  }

  late final _$simAtom = Atom(name: '_MfStoreBase.sim', context: context);

  @override
  double? get sim {
    _$simAtom.reportRead();
    return super.sim;
  }

  @override
  set sim(double? value) {
    _$simAtom.reportWrite(value, super.sim, () {
      super.sim = value;
    });
  }

  late final _$indexAtom = Atom(name: '_MfStoreBase.index', context: context);

  @override
  int? get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int? value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$naoAtom = Atom(name: '_MfStoreBase.nao', context: context);

  @override
  double? get nao {
    _$naoAtom.reportRead();
    return super.nao;
  }

  @override
  set nao(double? value) {
    _$naoAtom.reportWrite(value, super.nao, () {
      super.nao = value;
    });
  }

  late final _$parcialAtom =
      Atom(name: '_MfStoreBase.parcial', context: context);

  @override
  double? get parcial {
    _$parcialAtom.reportRead();
    return super.parcial;
  }

  @override
  set parcial(double? value) {
    _$parcialAtom.reportWrite(value, super.parcial, () {
      super.parcial = value;
    });
  }

  late final _$recusaAtom = Atom(name: '_MfStoreBase.recusa', context: context);

  @override
  double? get recusa {
    _$recusaAtom.reportRead();
    return super.recusa;
  }

  @override
  set recusa(double? value) {
    _$recusaAtom.reportWrite(value, super.recusa, () {
      super.recusa = value;
    });
  }

  late final _$recoverDataAsyncAction =
      AsyncAction('_MfStoreBase.recoverData', context: context);

  @override
  Future<void> recoverData() {
    return _$recoverDataAsyncAction.run(() => super.recoverData());
  }

  @override
  String toString() {
    return '''
fase: ${fase},
answers: ${answers},
uid: ${uid},
character: ${character},
qtdRespSim: ${qtdRespSim},
qtdRespNao: ${qtdRespNao},
qtdRespPar: ${qtdRespPar},
qtdRespRec: ${qtdRespRec},
answer: ${answer},
sim: ${sim},
index: ${index},
nao: ${nao},
parcial: ${parcial},
recusa: ${recusa}
    ''';
  }
}
