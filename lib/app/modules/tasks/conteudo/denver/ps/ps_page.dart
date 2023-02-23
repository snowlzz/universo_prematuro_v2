import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/charts/chart_ps.dart';


import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/components.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/lg/lg_page.dart';


import '../../conteudo_store.dart';


class PessoalSocialPage extends StatefulWidget {
  const PessoalSocialPage({super.key});

  @override
  State<PessoalSocialPage> createState() => _PessoalSocialPageState();
}

class _PessoalSocialPageState extends State<PessoalSocialPage> {
  Map? answers;
  ConteudoStore store = Modular.get();
  @override
  void initState() {
    store.createDenverData();
    super.initState();
  }

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
                                        DenverRadio(
                                          fase: 'PS',
                                          text: 'Observa o rosto?',
                                          index: 1,
                                        ),
                                        Image.asset(
                                            'images-dev/ps/A2 - color.jpg'),
                                        DenverRadio(
                                          fase: 'PS',
                                          text:
                                              'Sorri quando conversa com você?',
                                          index: 2,
                                        ),
                                        Image.asset(
                                            'images-dev/ps/A3 - color.jpg'),
                                        DenverRadio(
                                          fase: 'PS',
                                          text: 'Sorri espontaneamente?',
                                          index: 3,
                                        ),

                                        Image.asset(
                                            'images-dev/ps/A4 - color.jpg'),
                                        DenverRadio(
                                            fase: 'PS',
                                            text: 'Observa sua própria mão?',
                                            index: 4),

                                        Image.asset(
                                            'images-dev/ps/A5 - color.jpg'),
                                        DenverRadio(
                                          fase: 'PS',
                                          text: "Tenta alcançar um brinquedo?",
                                          index: 5,
                                        ),

                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          const LgPage())));
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
