import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mf/mf_store.dart';
import 'package:flutter/material.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mg/mg_page.dart';

import '../../components.dart';

class MfPage extends StatefulWidget {
  final String title;
  const MfPage({Key? key, this.title = 'MfPage'}) : super(key: key);
  @override
  MfPageState createState() => MfPageState();
}

class MfPageState extends State<MfPage> {
  final MfStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avaliação de Desenvolvimento'),
          centerTitle: true,
        ),
        body: Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                    child: LayoutBuilder(
                        builder: (_, constraints) => SingleChildScrollView(
                              child: Column(children: [
                                const SizedBox(height: 20),
                                const Center(
                                    child: Text(
                                  "Avaliação Motor Fino",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                                const SizedBox(height: 20),
                                Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 3.8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            'images-dev/mf-adap/B1 - color.jpg'),
                                        DenverRadioMF(
                                            index: 1,
                                            text:
                                                'Acompanha, com o olho ou a cabeça um objeto partindo da lateral do corpo (esquerdo e direito) até o centro (até o nariz)?',
                                            fase: "MF"),
                                        Image.asset(
                                            'images-dev/mf-adap/B2 - color.jpg'),
                                        DenverRadioMF(
                                            index: 2,
                                            text:
                                                'Acompanha, com o olho ou cabeça um objeto partindo da lateral até passar do centro?',
                                            fase: "MF"),
                                        Image.asset(
                                            'images-dev/mf-adap/B3 - color.jpg'),
                                        DenverRadioMF(
                                            index: 3,
                                            text: 'Segura um chocalho?',
                                            fase: "MF"),
                                        Image.asset(
                                            'images-dev/mf-adap/B4 - color.jpg'),
                                        DenverRadioMF(
                                            index: 4,
                                            text: 'Juntas as duas mãos?',
                                            fase: "MF"),
                                        Image.asset(
                                            'images-dev/mf-adap/B5 - color.jpg'),
                                        DenverRadioMF(
                                            index: 5,
                                            text:
                                                'Acompanha, com o olho ou cabeça um objeto partindo da lateral até o outro lado, 180° (de um ombro ao outro)?',
                                            fase: "MF"),
                                        Image.asset(
                                            'images-dev/mf-adap/B6 - color.jpg'),
                                        DenverRadioMF(
                                            index: 6,
                                            text:
                                                'Olha para um objeto pequeno? Exemplo: tampa de uma caneta?',
                                            fase: "MF"),
                                        Image.asset(
                                            'images-dev/mf-adap/B7 - color.jpg'),
                                        DenverRadioMF(
                                            index: 7,
                                            text:
                                                'Move as mãos ou braços para alcançar um objeto pequeno sobre uma superfície?',
                                            fase: "MF"),

                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          const MgPage())));
                                            },
                                            child: const Text('Próxima Avaliação'))
                                        
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            )))
              ],
            )));
  }
}
