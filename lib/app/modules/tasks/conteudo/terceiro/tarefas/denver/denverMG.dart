// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';

import '../../../components.dart';
import '../../../denver/charts/charts.dart';


class DenverMGPage extends StatefulWidget {
  final String title;
  const DenverMGPage({Key? key, this.title = 'Avaliação Motor-Grosseiro'})
      : super(key: key);
  @override
  DenverMGState createState() => DenverMGState();
}

class DenverMGState extends State<DenverMGPage> {
  final PrimeiroStore store = Modular.get();
  Map? answers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Observer(builder: (_) {
            return Column(
              children: [
                Expanded(
                    child: LayoutBuilder(
                        builder: (_, constraints) => SingleChildScrollView(
                              child: Column(children: [
                                const SizedBox(height: 20),
                                const Center(
                                    child: Text(
                                  "Avaliação Avaliação Motor Grosseiro",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                                const SizedBox(height: 20),
                                Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D9 - color.jpg'),
                                        DenverRadioMG(
                                            index: 9,
                                            text:
                                                'Segurando em suas mãos para sentar, mantém a cabeça firme acompanhando o movimento?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D10 - color.jpg'),
                                        DenverRadioMG(
                                            index: 10,
                                            text:
                                                'De pé, sustenta o corpo (segurando)?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D11 - color.jpg'),
                                        DenverRadioMG(
                                            index: 11,
                                            text: 'Senta, sem apoio?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D12 - color.jpg'),
                                        DenverRadioMG(
                                            index: 12,
                                            text:
                                                'Da posição sentada, com auxílio de um apoio para ficar de pé, fica em pé sozinho(a)?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D13 - color.jpg'),
                                        DenverRadioMG(
                                            index: 13,
                                            text:
                                                'A partir de uma posição (deitada, engatinhando ou de pé), ele(a) senta-se sozinho(a)?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D14 - color.jpg'),
                                        DenverRadioMG(
                                            index: 14,
                                            text: 'Fica de pé?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D15 - color.jpg'),
                                        DenverRadioMG(
                                            index: 15,
                                            text: 'Fica de pé sozinha?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D16 - color.jpg'),
                                        DenverRadioMG(
                                            index: 16,
                                            text:
                                                'Abaixa-se e levanta-se, sem apoio?',
                                            fase: "MG"),
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context, MaterialPageRoute(
                                                  builder: (context) => Charts(),
                                                )
                                              );
                                            },
                                            child:
                                                const Text("Gráfico de Desenvolvimento"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            )))
              ],
            );
          }),
        ));
  }
}

Widget denverRadioMG({int? index, String? text, Map? answers}) {
  FirebaseAuth auth = FirebaseAuth.instance;

  SingingCharacter? _character2;

  if (answers != null) {
    switch (answers['hab$index']) {
      case 'par':
        _character2 = SingingCharacter.parcial;
        break;
      case 'sim':
        _character2 = SingingCharacter.sim;
        break;
      case 'nao':
        _character2 = SingingCharacter.nao;
        break;
      default:
        _character2 = null;
    }
  } else {
    FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('denver')
        .doc('MG')
        .set({});
  }

  return Observer(builder: (_) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40.0,
        ),
        textCTRST(
          stg1: 'Habilidade $index: ',
          stg2: text,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          // mainAxisSize: MainAxisSize.,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.sim,
                    toggleable: true,
                    // fillColor: MaterialStateProperty.all(Colors.green),
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      _character2 = value;
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MG')
                          .update({'hab$index': 'sim'});
                    }),
                const Text('Sim'),
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.nao,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MG')
                          .update({'hab$index': 'nao'});
                    }),
                const Text('Não')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.parcial,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MG')
                          .update({'hab$index': 'par'});
                    }),
                const Text('Parcial')
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  });
}

Widget textCTRST({String? stg1, String? stg2}) {
  return RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      children: <TextSpan>[
        TextSpan(text: stg1),
        TextSpan(
            text: stg2, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
