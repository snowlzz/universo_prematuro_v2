import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mg/mg_store.dart';
import 'package:flutter/material.dart';

import '../../components.dart';
import '../charts/charts.dart';

class MgPage extends StatefulWidget {
  final String title;
  const MgPage({Key? key, this.title = 'MgPage'}) : super(key: key);
  @override
  MgPageState createState() => MgPageState();
}

class MgPageState extends State<MgPage> {
  final MgStore store = Modular.get();

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
                                  "Avaliação Motor Grosso",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                                const SizedBox(height: 20),
                                Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 5.5,
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
                                            'images-dev/motor-grosseiro/D1 - color.jpg'),
                                        DenverRadioMG(
                                            index: 1,
                                            text:
                                                'Movimenta os dois braços e as duas pernas?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D2 - color.jpg'),
                                        DenverRadioMG(
                                            index: 2,
                                            text:
                                                'Levanta e retorna a cabeça da superfície quando esta deitado(a) de barriga para baixo?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D3 - color.jpg'),
                                        DenverRadioMG(
                                            index: 3,
                                            text:
                                                'Levanta e mantém a cabeça da superfície quando esta deitado(a) de barriga para baixo?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D4 - color.jpg'),
                                        DenverRadioMG(
                                            index: 4,
                                            text:
                                                'Levanta e mantém a cabeça e o peito da superfície quando esta deitado(a), mantendo o movimento com o apoio dos braços?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D5 - color.jpg'),
                                        DenverRadioMG(
                                            index: 5,
                                            text: 'Sentada, sutenta a cabeça?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D6 - color.jpg'),
                                        DenverRadioMG(
                                            index: 6,
                                            text:
                                                'Em pé, com apoio, sustenta seu peso nas pernas?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D7 - color.jpg'),
                                        DenverRadioMG(
                                            index: 7,
                                            text:
                                                'Eleva o peito com o apoio das mãos e cotovelo extendido?',
                                            fase: "MG"),
                                        Image.asset(
                                            'images-dev/motor-grosseiro/D8 - color.jpg'),
                                        DenverRadioMG(
                                            index: 8,
                                            text:
                                                'Vira sozinho(a), da posição de barriga para baixo para cima, ou vice-versa?',
                                            fase: "MG"),
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
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          const Charts())));
                                            },
                                            child: const Text('Gráfico de desenvolvimento'))
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
