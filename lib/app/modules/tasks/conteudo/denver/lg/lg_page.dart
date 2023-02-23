import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/charts/chart_lg.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/lg/lg_store.dart';
import 'package:flutter/material.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mf/mf_page.dart';

import '../charts/chart_ps.dart';
import '../charts/charts.dart';
import '../../components.dart';

class LgPage extends StatefulWidget {
  final String title;
  const LgPage({Key? key, this.title = 'LgPage'}) : super(key: key);
  @override
  LgPageState createState() => LgPageState();
}
class LgPageState extends State<LgPage> {
  final LgStore store = Modular.get();

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
                                  "Avaliação Linguagem",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                                const SizedBox(height: 20),
                                Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 3.6,
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
                                            'images-dev/linguagem/C1 - color.jpg'),
                                        DenverRadioLG(
                                          fase: 'LG',
                                          text: 'Reage ao som do sino? (Movimenta os olhos na direção do barulho ou alguma expressão corporal?)',
                                          index: 1,
                                        ),
                                        Image.asset('images-dev/linguagem/C2 - color.jpg'),
                                        DenverRadioLG(
                                          fase: 'LG',
                                          text: 'Emite algum som?',
                                          index: 2,
                                        ),
                                        Image.asset('images-dev/linguagem/C3 - color.jpg'),
                                        DenverRadioLG(
                                          fase: 'LG',
                                          text: 'Fala OOH/AAH?',
                                          index: 3,
                                        ),

                                        Image.asset('images-dev/linguagem/C4 - color.jpg'),
                                        DenverRadioLG(
                                            fase: 'LG',
                                            text: 'Riso/Gargalhada?',
                                            index: 4),

                                        Image.asset('images-dev/linguagem/C5 - color.jpg'),
                                        DenverRadioLG(
                                          fase: 'LG',
                                          text: "Grita?",
                                          index: 5,
                                        ),
                                        Image.asset('images-dev/linguagem/C6 - color.jpg'),
                                        DenverRadioLG(
                                          fase: 'LG',
                                          text: "Vira a cabeça para algum som? (Vira para ambos os lados?)",
                                          index: 6,
                                        ),
                                        Image.asset('images-dev/linguagem/C7 - color.jpg'),
                                         DenverRadioLG(
                                          fase: 'LG',
                                          text: "Vira a cabeça quando chama o nome? (Vira para ambos os lados?)",
                                          index: 7,
                                        ),

                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          const MfPage())));
                                            },
                                            child: const Text('grafico'))
                                        // Center(child: ElevatedButton(
                                        //   onPressed: (){
                                        //     Navigator.push(
                                        //       context, MaterialPageRoute(
                                        //         builder: (context) => const DenverLGPage(),
                                        //       )
                                        //     );
                                        //   },
                                        //   child: const Text("Proxima avaliação"),
                                        // ),)
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
