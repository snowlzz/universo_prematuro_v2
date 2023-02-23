import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/lg/lg_store.dart';

import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/ps/ps_store.dart';

import 'denver_data.dart';
import 'mf/mf_store.dart';
import 'mg/mg_store.dart';



class PSBarData{
  static int interval = 5;
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  var sim = 2;
  final PessoalSocialStore store = Modular.get();
  static List<DenverChartData> get barData {
    final store = Modular.get<PessoalSocialStore>();
    store.recoverData();

    return [
      DenverChartData(
        id: 0,
        name: 'SIM',
        eixoY: store.sim ?? 0,
        color: Colors.green,
      ),
      DenverChartData(
        id: 1,
        name: 'NAO',
        eixoY: store.nao ?? 0,
        color: Colors.red,
      ),
      DenverChartData(
        id: 2,
        name: 'PARCIAL',
        eixoY: store.parcial ?? 0,
        color: Colors.yellow,
      ),
      DenverChartData(
        id: 3,
        name: 'RECUSA',
        eixoY: store.recusa ?? 0,
        color: Colors.orange,
      ),
    ];
  }
}


class LGBarData{
  static int interval = 5;
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  var sim = 2;
  static List<DenverChartData> get barData {
    final store = Modular.get<LgStore>();
    store.recoverData();

    return [
      DenverChartData(
        id: 0,
        name: 'SIM',
        eixoY: store.sim ?? 0,
        color: Colors.green,
      ),
      DenverChartData(
        id: 1,
        name: 'NAO',
        eixoY: store.nao ?? 0,
        color: Colors.red,
      ),
      DenverChartData(
        id: 2,
        name: 'PARCIAL',
        eixoY: store.parcial ?? 0,
        color: Colors.yellow,
      ),
      DenverChartData(
        id: 3,
        name: 'RECUSA',
        eixoY: store.recusa ?? 0,
        color: Colors.orange,
      ),
    ];
  }
}

class MFBarData{
  static int interval = 5;
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  var sim = 2;
  static List<DenverChartData> get barData {
    final store = Modular.get<MfStore>();
    store.recoverData();

    return [
      DenverChartData(
        id: 0,
        name: 'SIM',
        eixoY: store.sim ?? 0,
        color: Colors.green,
      ),
      DenverChartData(
        id: 1,
        name: 'NAO',
        eixoY: store.nao ?? 0,
        color: Colors.red,
      ),
      DenverChartData(
        id: 2,
        name: 'PARCIAL',
        eixoY: store.parcial ?? 0,
        color: Colors.yellow,
      ),
      DenverChartData(
        id: 3,
        name: 'RECUSA',
        eixoY: store.recusa ?? 0,
        color: Colors.orange,
      ),
    ];
  }
}
// TODO MUDAR STORES DO CHART DATA
class MGBarData{
  static int interval = 5;
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  var sim = 2;
  static List<DenverChartData> get barData {
    final store = Modular.get<MgStore>();
    store.recoverData();

    return [
      DenverChartData(
        id: 0,
        name: 'SIM',
        eixoY: store.sim ?? 0,
        color: Colors.green,
      ),
      DenverChartData(
        id: 1,
        name: 'NAO',
        eixoY: store.nao ?? 0,
        color: Colors.red,
      ),
      DenverChartData(
        id: 2,
        name: 'PARCIAL',
        eixoY: store.parcial ?? 0,
        color: Colors.yellow,
      ),
      DenverChartData(
        id: 3,
        name: 'RECUSA',
        eixoY: store.recusa ?? 0,
        color: Colors.orange,
      ),
    ];
  }
}