// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'conteudo_store.g.dart';

class ConteudoStore = _ConteudoStoreBase with _$ConteudoStore;
abstract class _ConteudoStoreBase with Store {

  FirebaseAuth _auth = FirebaseAuth.instance;
  
  FirebaseFirestore _db = FirebaseFirestore.instance;

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
}