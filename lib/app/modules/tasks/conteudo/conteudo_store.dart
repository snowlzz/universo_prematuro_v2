// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'denver/lg/lg_store.dart';
import 'denver/mf/mf_store.dart';
import 'denver/mg/mg_store.dart';
import 'denver/ps/ps_store.dart';

part 'conteudo_store.g.dart';

class ConteudoStore = _ConteudoStoreBase with _$ConteudoStore;
abstract class _ConteudoStoreBase with Store {

  FirebaseAuth _auth = FirebaseAuth.instance;
  
  FirebaseFirestore _db = FirebaseFirestore.instance;

  PessoalSocialStore pStore = Modular.get();

  MfStore mfStore = Modular.get();

  MgStore mgStore = Modular.get();

  LgStore lgStore = Modular.get();

  @observable
  String? uid;

  @action
  createDenverData() async{
    uid = _auth.currentUser!.uid;
    await _db.collection("users").doc(uid).collection("denver").doc("PS").set({});
    await _db.collection("users").doc(uid).collection("denver").doc("LG").set({});
    await _db.collection("users").doc(uid).collection("denver").doc("MF").set({});
    await _db.collection("users").doc(uid).collection("denver").doc("MG").set({});
  } 

  @action
  Future<void> answersToNull() async {
    await _db.collection("users").doc(uid).collection("denver").doc("PS").set({});
    await _db.collection("users").doc(uid).collection("denver").doc("LG").set({});
    await _db.collection("users").doc(uid).collection("denver").doc("MF").set({});
    await _db.collection("users").doc(uid).collection("denver").doc("MG").set({});
    pStore.qtdRespSim = 0;
    pStore.qtdRespNao = 0;
    pStore.qtdRespPar = 0;
    pStore.qtdRespRec = 0;

    mfStore.qtdRespSim = 0;
    mfStore.qtdRespNao = 0;
    mfStore.qtdRespPar = 0;
    mfStore.qtdRespRec = 0;

    mgStore.qtdRespSim = 0;
    mgStore.qtdRespSim = 0;
    mgStore.qtdRespNao = 0;
    mgStore.qtdRespNao = 0;

    lgStore.qtdRespPar = 0;
    lgStore.qtdRespPar = 0;
    lgStore.qtdRespRec = 0;
    lgStore.qtdRespRec = 0;
  }
}