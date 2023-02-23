// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/ps/ps_store.dart';

enum SingingCharacter { sim, nao, parcial, recusa }

class DenverRadio extends StatefulWidget {
  String? fase;
  int? index;
  String? text;

  DenverRadio({super.key, this.fase, this.text, this.index});

  @override
  State<DenverRadio> createState() => _DenverRadioState();
}

class _DenverRadioState extends State<DenverRadio> {
  SingingCharacter? character;
  Map? answers;


  PessoalSocialStore pStore = Modular.get();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (answers != null) {
      switch (answers?['hab${widget.index}']) {
        case 'sim':
          character = SingingCharacter.sim;
          break;
        case 'par':
          character = SingingCharacter.parcial;
          break;
        case 'recusa':
          character = SingingCharacter.recusa;
          break;
        case 'nao':
          character = SingingCharacter.nao;
          break;
        default:
      }
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 3.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(widget.text ?? "")),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text('SIM'),
                  Radio(
                    value: SingingCharacter.sim,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespSim++;
                      
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('PS')
                          .update({
                        'hab${widget.index}': 'sim',
                        'qtd_sim': pStore.qtdRespSim,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('NÃO'),
                  Radio(
                    value: SingingCharacter.nao,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespNao++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('PS')
                          .update({
                        'hab${widget.index}': 'nao',
                        'qtd_nao': pStore.qtdRespNao,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('PARCIAL'),
                  Radio(
                    value: SingingCharacter.parcial,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });


                      pStore.qtdRespPar++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('PS')
                          .update({
                        'hab${widget.index}': 'par',
                        'qtd_par': pStore.qtdRespPar,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'parcial', 1);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('RECUSA'),
                  Radio(
                    value: SingingCharacter.recusa,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespRec++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('PS')
                          .update({
                        'hab${widget.index}': 'recusa',
                        'qtd_recusa': pStore.qtdRespRec,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'recusa', 1);
                    },
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
class DenverRadioLG extends StatefulWidget {
  String? fase;
  int? index;
  String? text;

  DenverRadioLG({super.key, this.fase, this.text, this.index});

  @override
  State<DenverRadioLG> createState() => _DenverRadioLGState();
}

class _DenverRadioLGState extends State<DenverRadioLG> {
  SingingCharacter? character;
  Map? answers;


  PessoalSocialStore pStore = Modular.get();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (answers != null) {
      switch (answers?['hab${widget.index}']) {
        case 'sim':
          character = SingingCharacter.sim;
          break;
        case 'par':
          character = SingingCharacter.parcial;
          break;
        case 'recusa':
          character = SingingCharacter.recusa;
          break;
        case 'nao':
          character = SingingCharacter.nao;
          break;
        default:
      }
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 3.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(widget.text ?? "")),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text('SIM'),
                  Radio(
                    value: SingingCharacter.sim,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespSim++;
                      
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('LG')
                          .update({
                        'hab${widget.index}': 'sim',
                        'qtd_sim': pStore.qtdRespSim,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('NÃO'),
                  Radio(
                    value: SingingCharacter.nao,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespNao++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('LG')
                          .update({
                        'hab${widget.index}': 'nao',
                        'qtd_nao': pStore.qtdRespNao,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('PARCIAL'),
                  Radio(
                    value: SingingCharacter.parcial,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });


                      pStore.qtdRespPar++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('LG')
                          .update({
                        'hab${widget.index}': 'par',
                        'qtd_par': pStore.qtdRespPar,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'parcial', 1);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('RECUSA'),
                  Radio(
                    value: SingingCharacter.recusa,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespRec++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('LG')
                          .update({
                        'hab${widget.index}': 'recusa',
                        'qtd_recusa': pStore.qtdRespRec,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'recusa', 1);
                    },
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
class DenverRadioMF extends StatefulWidget {
  String? fase;
  int? index;
  String? text;

  DenverRadioMF({super.key, this.fase, this.text, this.index});

  @override
  State<DenverRadioMF> createState() => _DenverRadioMFState();
}

class _DenverRadioMFState extends State<DenverRadioMF> {
  SingingCharacter? character;
  Map? answers;


  PessoalSocialStore pStore = Modular.get();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (answers != null) {
      switch (answers?['hab${widget.index}']) {
        case 'sim':
          character = SingingCharacter.sim;
          break;
        case 'par':
          character = SingingCharacter.parcial;
          break;
        case 'recusa':
          character = SingingCharacter.recusa;
          break;
        case 'nao':
          character = SingingCharacter.nao;
          break;
        default:
      }
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 3.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(widget.text ?? "")),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text('SIM'),
                  Radio(
                    value: SingingCharacter.sim,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespSim++;
                      
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MF')
                          .update({
                        'hab${widget.index}': 'sim',
                        'qtd_sim': pStore.qtdRespSim,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('NÃO'),
                  Radio(
                    value: SingingCharacter.nao,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespNao++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MF')
                          .update({
                        'hab${widget.index}': 'nao',
                        'qtd_nao': pStore.qtdRespNao,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('PARCIAL'),
                  Radio(
                    value: SingingCharacter.parcial,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });


                      pStore.qtdRespPar++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MF')
                          .update({
                        'hab${widget.index}': 'par',
                        'qtd_par': pStore.qtdRespPar,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'parcial', 1);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('RECUSA'),
                  Radio(
                    value: SingingCharacter.recusa,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespRec++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MF')
                          .update({
                        'hab${widget.index}': 'recusa',
                        'qtd_recusa': pStore.qtdRespRec,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'recusa', 1);
                    },
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DenverRadioMG extends StatefulWidget {
  String? fase;
  int? index;
  String? text;

  DenverRadioMG({super.key, this.fase, this.text, this.index});

  @override
  State<DenverRadioMG> createState() => _DenverRadioMGState();
}

class _DenverRadioMGState extends State<DenverRadioMG> {
  SingingCharacter? character;
  Map? answers;


  PessoalSocialStore pStore = Modular.get();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (answers != null) {
      switch (answers?['hab${widget.index}']) {
        case 'sim':
          character = SingingCharacter.sim;
          break;
        case 'par':
          character = SingingCharacter.parcial;
          break;
        case 'recusa':
          character = SingingCharacter.recusa;
          break;
        case 'nao':
          character = SingingCharacter.nao;
          break;
        default:
      }
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 3.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(widget.text ?? "")),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text('SIM'),
                  Radio(
                    value: SingingCharacter.sim,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespSim++;
                      
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MG')
                          .update({
                        'hab${widget.index}': 'sim',
                        'qtd_sim': pStore.qtdRespSim,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('NÃO'),
                  Radio(
                    value: SingingCharacter.nao,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespNao++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MG')
                          .update({
                        'hab${widget.index}': 'nao',
                        'qtd_nao': pStore.qtdRespNao,
                      }).then((value) => null);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('PARCIAL'),
                  Radio(
                    value: SingingCharacter.parcial,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });


                      pStore.qtdRespPar++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MG')
                          .update({
                        'hab${widget.index}': 'par',
                        'qtd_par': pStore.qtdRespPar,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'parcial', 1);
                    },
                  )
                ],
              ),
              Column(
                children: [
                  const Text('RECUSA'),
                  Radio(
                    value: SingingCharacter.recusa,
                    groupValue: character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        character = value;
                      });

                      pStore.qtdRespRec++;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MG')
                          .update({
                        'hab${widget.index}': 'recusa',
                        'qtd_recusa': pStore.qtdRespRec,
                      }).then((value) => null);
                      // pStore.savePSDenver(widget.fase!, 'recusa', 1);
                    },
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

