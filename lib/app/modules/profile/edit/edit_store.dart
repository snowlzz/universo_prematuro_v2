// ignore_for_file: prefer_final_fields, library_private_types_in_public_api, unused_local_variable, non_constant_identifier_names, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/photo_store.dart';


import '../../initial/auth/auth_store.dart';
import '../../models/kid_model.dart';
import '../../models/mom_model.dart';
import '../../services/via_cep_service.dart';
// import '../../services/via_cep_service.dart';
// import 'photo_store.dart';

part 'edit_store.g.dart';

class EditStore = _EditStoreBase with _$EditStore;

abstract class _EditStoreBase with Store {
  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseFirestore _db = FirebaseFirestore.instance;

  final PhotoStore store = Modular.get();

  @observable
  String? idLogado;

  @observable
  String? gender;

  @observable
  TextEditingController controllerKidName = TextEditingController();

  @observable
  TextEditingController controllerKidBirth = TextEditingController();

  @observable
  TextEditingController controllerCorrectedAge = TextEditingController();

  @observable
  int correctedAge = 0;

  

  @action
  void calculateCorrectedAge() {
    String ageText = controllerCorrectedAge.text;
    int weeksStartIndex = ageText.indexOf("Semanas:") + 8;
    int weeksEndIndex = ageText.indexOf(",");
    int daysStartIndex = ageText.indexOf("Dias:") + 5;
    int daysEndIndex = ageText.length;
    
    int weeks = 0, days = 0;

    if (int.tryParse(ageText.substring(weeksStartIndex, weeksEndIndex).trim()) != null) {
      weeks = int.parse(ageText.substring(weeksStartIndex, weeksEndIndex).trim());
    }

    if (int.tryParse(ageText.substring(daysStartIndex, daysEndIndex).trim()) != null) {
      days = int.parse(ageText.substring(daysStartIndex, daysEndIndex).trim());
    }
    correctedAge = (weeks * 7 + days) ~/ 7 * 7;
    int idade_ajustada = correctedAge - 280;
    print(correctedAge);
  }

  @action
  Future<void> saveDataToFirebase() async {
    User usuarioLogado = _auth.currentUser!;
    idLogado = usuarioLogado.uid;

    KidModel model = KidModel();
    model.name = controllerKidName.text;
    model.birth = controllerKidBirth.text;
    model.gestationalAge = controllerCorrectedAge.text;
    model.gender = gender;

    calculateCorrectedAge();

    Map<String, dynamic> data = {
      "name": model.name,
      "birth": model.birth,
      "ges": model.gestationalAge,
      "corrected": correctedAge,
      "gender": model.gender,
      "photo": store.photoURL,
      "photomom": store.momURL
    };

    _db
        .collection("users")
        .doc(idLogado)
        .collection("Kid")
        .doc(idLogado)
        .set(data, SetOptions(merge: true))
        .then((value) {
      Modular.to.pushReplacementNamed('/nav/');
    });
  }

  Future<void> saveCep() async {
    User usuarioLogado = _auth.currentUser!;
    idLogado = usuarioLogado.uid;

    Map<String, dynamic> data = {
      'cep': controllerCEP.text
    };

    _db.collection("users").doc(idLogado).update(data);

    // DocumentSnapshot snap = await _db.collection("users").doc(idLogado).update();
  }

  Future<void> recoverDataFromFirebase() async {
    User usuarioLogado = _auth.currentUser!;
    idLogado = usuarioLogado.uid;
    final AuthStore aStore = Modular.get();
    DocumentSnapshot snapshot =
        await _db.collection("users").doc(idLogado).get();
    Map? data = snapshot.data() as Map?;

    aStore.controllerName.text = data!["nome mae"];
    controllerCEP.text = data["cep"];

    DocumentSnapshot snap = await _db
        .collection("users")
        .doc(idLogado)
        .collection("Kid")
        .doc(idLogado)
        .get();
    Map? dados = snap.data() as Map?;

    controllerKidName.text = dados!["name"];
    controllerKidBirth.text = dados['birth'];
    controllerCorrectedAge.text = dados["ges"];
    controllerCEP.text = dados["cep"];
    gender = dados['gender'];
    if (dados["photo"] != null && dados["photomom"] != null) {
      store.photoURL = dados["photo"];
      store.momURL = dados["photomom"];
    }
  
  }
  

  @observable
  TextEditingController controllerCEP = TextEditingController();

  @observable
  TextEditingController controllerPhone = TextEditingController();

  @observable
  String? result;

  void searching(bool enable) {
    result = enable ? '' : result;
  }

  Future searchCep() async {
    searching(true);

    final resultCep = await ViaCepService.fetchCep(cep: controllerCEP.text);
    MomModel mom = MomModel();
    mom.city = resultCep.localidade;
    mom.street = resultCep.logradouro;
    mom.state = resultCep.uf;
    mom.neighborhood = resultCep.bairro;
    mom.ibge = resultCep.ibge;

    Map<String, dynamic> data = {
      "geo": {
        "city": resultCep.localidade,
        "address": resultCep.logradouro,
        "neighborhood": resultCep.bairro,
        "state": resultCep.uf,
        "ibge": resultCep.ibge,
      }
    };

    _db.collection("users").doc(idLogado).set(data, SetOptions(merge: true));
    result = resultCep.toJson();
  }
}

// @observable
  // int da = 0;

  // @observable
  // int ma = 0;

  // @observable
  // int aa = 0;

  // @observable
  // int id = 0;

  // @observable
  // int month = 0;

  // @observable
  // int day = 0;

  // @observable
  // String dataNasc = '';

  // calculoIdadeCrono(){

  //   var dataAtual = DateTime.now();
  //   da = dataAtual.day;
  //   ma = dataAtual.month;
  //   aa =  dataAtual.year;

  //   dataNasc = controllerKidBirth.text;
  //   List<String> fields = dataNasc.split("/");
  //   int dia = int.parse(fields[0]);
  //   int mes = int.parse(fields[1]);
  //   int ano = int.parse(fields[2]);
  //   id = aa - ano;
  //   month = ma - mes;
  //   day = da - dia;

  //   day = dia - mes;
  //   if(mes > ma||( mes == ma && dia > da)){
  //     id = (id- 1);
  //     month = (ma- 1);
  //     day = dia + 1;

  //   } 
    
  //   day = (day- 1);
  //   print('$id anos, $month meses, $day dias');

  // }

//   @observable
//   int? correctedAgeInDays;

// void calculateCorrectedAge(TextEditingController controllerKidBirth, TextEditingController controllerCorrectedAge) {
//   String kidBirthText = controllerKidBirth.text;
//   String correctedAgeText = controllerCorrectedAge.text;

//   var kidBirth = DateFormat("dd/MM/yyyy").parse(kidBirthText);
//   int weeksStartIndex = correctedAgeText.indexOf("Semanas:") + 8;
//   int weeksEndIndex = correctedAgeText.indexOf(",");
//   int daysStartIndex = correctedAgeText.indexOf("Dias:") + 5;
//   int daysEndIndex = correctedAgeText.length;

//   int weeks = 0, days = 0;

//   if (int.tryParse(correctedAgeText.substring(weeksStartIndex, weeksEndIndex).trim()) != null) {
//     weeks = int.parse(correctedAgeText.substring(weeksStartIndex, weeksEndIndex).trim());
//   }

//   if (int.tryParse(correctedAgeText.substring(daysStartIndex, daysEndIndex).trim()) != null) {
//     days = int.parse(correctedAgeText.substring(daysStartIndex, daysEndIndex).trim());
//   }

//   correctedAgeInDays = weeks * 7 + days;
//   DateTime currentDate = DateTime.now();
//   int differenceInDays = currentDate.difference(kidBirth).inDays;
//   int adjustedAgeInDays = differenceInDays - correctedAgeInDays!;
//   int years = (adjustedAgeInDays / 365).floor();
//   int remainingDays = adjustedAgeInDays - (years * 365);
//   int months = (remainingDays / 30).floor();
//   int remainingDaysAfterMonths = remainingDays - (months * 30);

//   // correctedAge = 

//   print("A idade ajustada da criança é de $years anos, $months meses e $remainingDaysAfterMonths dias");
//   }