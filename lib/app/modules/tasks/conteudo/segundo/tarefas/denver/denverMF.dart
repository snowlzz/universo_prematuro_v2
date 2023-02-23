// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/components.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';


import 'denverMG.dart';

class DenverMFPage extends StatefulWidget {
  final String title;
  const DenverMFPage({Key? key, this.title = 'Avaliação Motor-Fino'}) : super(key: key);
  @override
  DenverMFState createState() => DenverMFState();
}
class DenverMFState extends State<DenverMFPage> {
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
        child: Observer(builder: (_) {return Column(
          children: [
            Expanded(child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Center(child: Text(
                    "Avaliação Motor-Fino",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  )),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 7.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset('images-dev/mf-adap/B1 - color.jpg'),
                          DenverRadioMF(index: 1,text: 'Acompanha, com o olho ou a cabeça um objeto partindo da lateral do corpo (esquerdo e direito) até o centro (até o nariz)?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B2 - color.jpg'),
                          DenverRadioMF(index: 2,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até passar do centro?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B3 - color.jpg'),
                          DenverRadioMF(index: 3,text: 'Segura um chocalho?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B4 - color.jpg'),
                          DenverRadioMF(index: 4,text: 'Juntas as duas mãos?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B5 - color.jpg'),
                          DenverRadioMF(index: 5,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até o outro lado, 180° (de um ombro ao outro)?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B6 - color.jpg'),
                          DenverRadioMF(index: 6,text: 'Olha para um objeto pequeno? Exemplo: tampa de uma caneta?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B7 - color.jpg'),
                          DenverRadioMF(index: 7,text: 'Move as mãos ou braços para alcançar um objeto pequeno sobre uma superfície?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B8 - color.jpg'),
                          DenverRadioMF(index: 8,text: 'Olha para baixo quando o brinquedo quando cai no chão?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B9 - color.jpg'),
                          DenverRadioMF(index: 9,text: 'Consegue pegar um objeto pequeno? Exemplo: tampa de uma caneta.', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B10 - color.jpg'),
                          DenverRadioMF(index: 10,text: 'Passa um objeto de uma mão para outra?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B11 - color.jpg'),
                          DenverRadioMF(index: 11,text: 'Segura dois objetos diferentes, um em cada mão?', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B12 - color.jpg'),
                          DenverRadioMF(index: 12,text: 'Pega objetos pequenos com dedos (Pinça)? Exemplo: tampa de uma caneta.', fase:  "MF"),
                          Image.asset('images-dev/mf-adap/B13 - color.jpg'),
                          DenverRadioMF(index: 13,text: 'Bate um objeto contra o outro? Exemplo: panelas, potes e brinquedos.', fase:  "MF"),
                          Center(child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => const DenverMGPage(),
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

