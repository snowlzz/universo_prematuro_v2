import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/mg/mg_store.dart';
import 'package:flutter/material.dart';

import '../components.dart';

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
                                  "Avaliação Pessoal - Social",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                                const SizedBox(height: 20),
                                Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 2.85,
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
                                            'images-dev/ps/A1 - color.jpg'),
                                        DenverRadioMG(
                                          fase: 'LG',
                                          text: 'Observa o rosto?',
                                          index: 1,
                                        ),
                                        Image.asset(
                                            'images-dev/ps/A2 - color.jpg'),
                                        DenverRadioMG(
                                          fase: 'LG',
                                          text:
                                              'Sorri quando conversa com você?',
                                          index: 2,
                                        ),
                                        Image.asset(
                                            'images-dev/ps/A3 - color.jpg'),
                                        DenverRadioMG(
                                          fase: 'LG',
                                          text: 'Sorri espontaneamente?',
                                          index: 3,
                                        ),

                                        Image.asset(
                                            'images-dev/ps/A4 - color.jpg'),
                                        DenverRadioMG(
                                            fase: 'LG',
                                            text: 'Observa sua própria mão?',
                                            index: 4),

                                        Image.asset(
                                            'images-dev/ps/A5 - color.jpg'),
                                        DenverRadioMG(
                                          fase: 'LG',
                                          text: "Tenta alcançar um brinquedo?",
                                          index: 5,
                                        ),

                                        // ElevatedButton(
                                        //     onPressed: () {
                                        //       Navigator.push(
                                        //           context,
                                        //           MaterialPageRoute(
                                        //               builder: ((context) =>
                                        //                   const ChartLG())));
                                        //     },
                                        //     child: const Text('grafico'))
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
