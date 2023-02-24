// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';


import '../../../components.dart';
import 'denverMF.dart';

class DenverLGPage extends StatefulWidget {
  final String title;
  const DenverLGPage({Key? key, this.title = 'Avaliação Linguagem'}) : super(key: key);
  @override
  DenverLGState createState() => DenverLGState();
}
class DenverLGState extends State<DenverLGPage> {
  final PrimeiroStore store = Modular.get();
  Map? answers;
  // Type sing = SingingCharacter;
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
                    "Avaliação Linguagem",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  )),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset('images-dev/linguagem/C11 - color.jpg'),
                          DenverRadioLG(index: 11,text: 'Emite três ou mais vezes, como "mamama, dadada, gagaga...?"',fase: "LG"),
                          Image.asset('images-dev/linguagem/C12 - color.jpg'),
                          DenverRadioLG(index: 12,text: 'Conta suas historias com sons não compreensíveis?',fase: "LG"),
                          Image.asset('images-dev/linguagem/C13 - color.jpg'),
                          DenverRadioLG(index: 13,text: 'Fala papa ou mama direncionando a figura da mãe ou do pai?',fase: "LG"),
                          Image.asset('images-dev/linguagem/C14 - color.jpg'),
                          DenverRadioLG(index: 14,text: 'Fala uma 1 palavra, além de papa ou mama? Exemplo: "Caca"',fase: "LG"),
                          Image.asset('images-dev/linguagem/C15 - color.jpg'),
                          DenverRadioLG(index: 15,text: 'Fala 2 palavras juntas, além de papa ou mama? Exemplo: "Caca chegou"',fase: "LG"),
                          Image.asset('images-dev/linguagem/C16 - color.jpg'),
                          DenverRadioLG(index: 16,text: 'Fala 3 palavras juntas, além de papa ou mama? Exemplo: "Caca chegou casa"',fase: "LG"),
    
                        Center(child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => const DenverMFPage(),
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

Widget denverRadioL({int? index, String? text, Map? answers}) {
  FirebaseAuth auth = FirebaseAuth.instance;

  SingingCharacter? character2;

  if (answers != null) {
    switch (answers['hab$index']) {
      case 'par':
        character2 = SingingCharacter.parcial;
        break;
      case 'sim':
        character2 = SingingCharacter.sim;
        break;
      case 'nao':
        character2 = SingingCharacter.nao;
        break;
      default:
        character2 = null;
    }
  } else {
    FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('denver')
        .doc('LG')
        .set({}).then((value) => null);
  }

  return Observer(builder: (_) {return Column(
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
                      activeColor: Colors.green,
                      toggleable: false,
                      groupValue: character2,
                      onChanged: (SingingCharacter? value) async {
                        character2 = value;
                        FirebaseFirestore.instance
                            .collection('users')
                            .doc(auth.currentUser!.uid)
                            .collection('denver')
                            .doc('LG')
                            .update({'hab$index': 'sim'});
                      }),
                
                const Text('Sim'),
              ],
            ),
          
          Column(
            children: <Widget>[
              Radio(
                    value: SingingCharacter.nao,
                    groupValue: character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('LG')
                          .update({'hab$index': 'nao'});
                    }),
              const Text('Não')
            ],
          ),
          Column(
            children: <Widget>[
               Radio(
                    value: SingingCharacter.parcial,
                    groupValue: character2,
                    toggleable: true,
                    onChanged: 
                    (SingingCharacter? value) {
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('LG')
                          .update({'hab$index': 'par'});
                    }
                    ),
              
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
        TextSpan(text: stg2, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}