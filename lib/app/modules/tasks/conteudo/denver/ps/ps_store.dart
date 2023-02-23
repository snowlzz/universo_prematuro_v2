// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'ps_store.g.dart';

enum SingingCharacter { sim, nao, parcial, recusa }

class PessoalSocialStore = _PessoalSocialStoreBase with _$PessoalSocialStore;

abstract class _PessoalSocialStoreBase with Store {
  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseFirestore _db = FirebaseFirestore.instance;

  @observable
  String? fase;

  @observable
  Map? answers;

  @observable
  String? uid;

  @observable
  SingingCharacter? character;

  @observable
  double qtdRespSim = 0;

  @observable
  double qtdRespNao = 0;

  @observable
  double qtdRespPar = 0;

  @observable
  double qtdRespRec = 0;

  @observable
  String? answer;

  @observable
  double? sim;

  @observable
  int? index;

  @observable
  double? nao;

  @observable
  double? parcial;

  @observable
  double? recusa;

  @action
  Future<void> recoverData() async {
    User usuarioLogado = _auth.currentUser!;

    uid = usuarioLogado.uid;

    DocumentSnapshot snap = await _db
        .collection("users")
        .doc(uid)
        .collection("denver")
        .doc("PS")
        .get();

    Map? data = snap.data() as Map?;

    sim = data!["qtd_sim"];
    nao = data["qtd_nao"];
    parcial = data["qtd_par"];
    recusa = data["qtd_recusa"];
  }


}
