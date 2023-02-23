// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/components.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';


import '../../../denver/charts/charts.dart';

class DenverMGPage extends StatefulWidget {
  final String title;
  const DenverMGPage({Key? key, this.title = 'Avaliação Motor-Grosseiro'}) : super(key: key);
  @override
  DenverMGState createState() => DenverMGState();
}
class DenverMGState extends State<DenverMGPage> {
  final PrimeiroStore store = Modular.get();
  FirebaseAuth auth = FirebaseAuth.instance;
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
        child: Observer(builder: (_) {return Column(
          children: [
            Expanded(child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Center(child: Text(
                    "Avaliação Avaliação Motor Grosseiro",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  )),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 7.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset('images-dev/motor-grosseiro/D1 - color.jpg'),
                          DenverRadioMG(index: 1,text: 'Movimenta os dois braços e as duas pernas?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D2 - color.jpg'),
                          DenverRadioMG(index: 2,text: 'Levanta e retorna a cabeça da superfície quando esta deitado(a) de barriga para baixo?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D3 - color.jpg'),
                          DenverRadioMG(index: 3,text: 'Levanta e mantém a cabeça da superfície quando esta deitado(a) de barriga para baixo?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D4 - color.jpg'),
                          DenverRadioMG(index: 4,text: 'Levanta e mantém a cabeça e o peito da superfície quando esta deitado(a), mantendo o movimento com o apoio dos braços?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D5 - color.jpg'),
                          DenverRadioMG(index: 5,text: 'Sentada, sutenta a cabeça?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D6 - color.jpg'),
                          DenverRadioMG(index: 6,text: 'Em pé, com apoio, sustenta seu peso nas pernas?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D7 - color.jpg'),
                          DenverRadioMG(index: 7,text: 'Eleva o peito com o apoio das mãos e cotovelo extendido?', fase:  "MG",),
                          Image.asset('images-dev/motor-grosseiro/D8 - color.jpg'),
                          DenverRadioMG(index: 8,text: 'Vira sozinho(a), da posição de barriga para baixo para cima, ou vice-versa?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D9 - color.jpg'),
                          DenverRadioMG(index: 9,text: 'Segurando em suas mãos para sentar, mantém a cabeça firme acompanhando o movimento?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D10 - color.jpg'),
                          DenverRadioMG(index: 10,text: 'De pé, sustenta o corpo (segurando)?', fase: "MG"),
                          Image.asset('images-dev/motor-grosseiro/D11 - color.jpg'),
                          DenverRadioMG(index: 11,text: 'Senta, sem apoio?', fase:  "MG"),
                          Image.asset('images-dev/motor-grosseiro/D12 - color.jpg'),
                          DenverRadioMG(index: 12,text: 'Da posição sentada, com auxílio de um apoio para ficar de pé, fica em pé sozinho(a)?', fase:  "MG"),
                          Center(child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Charts()
                                )
                              );
                            },
                            child: const Text("Proxima avaliação"),
                          ),)
                      ],),
                    ),
                  )
                 
                ]),
              )
            ))
          ],
        );
  }),
    ));
  }
}
