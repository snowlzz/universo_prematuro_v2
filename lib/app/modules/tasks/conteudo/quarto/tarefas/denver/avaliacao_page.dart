import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../profile/edit/edit_store.dart';
import '../../../components.dart';
import '../../../conteudo_store.dart';
import '../../quarto_store.dart';
import 'denverLG.dart';

class AvaliacaoPage extends StatefulWidget {
  final String title;
  const AvaliacaoPage({Key? key, this.title = 'Avaliação Pessoal - Social'})
      : super(key: key);
  @override
  AvaliacaoPageState createState() => AvaliacaoPageState();
}

class AvaliacaoPageState extends State<AvaliacaoPage> {
  final QuartoStore store = Modular.get();
  final EditStore eStore = Modular.get();
  // String name = eStore.controllerKidName.text;
  final ConteudoStore cStore = Modular.get();
  Map? answers;

  @override
  void initState() {
    cStore.answersToNull();
    super.initState();
  }
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
                                            'images-dev/ps/A7 - color.jpg'),
                                        DenverRadio(
                                            index: 7,
                                            text: 'Joga bola com o examinador?',
                                            fase: "PS"),
                                        Image.asset(
                                            'images-dev/ps/A8 - color.jpg'),
                                        DenverRadio(
                                            index: 8,
                                            text: 'Imita a ação de uma pessoa?',
                                            fase: "PS"),
                                        Image.asset(
                                            'images-dev/ps/A9 - color.jpg'),
                                        DenverRadio(
                                            index: 9,
                                            text: 'Da "tchau"?',
                                            fase: "PS"),
                                        Image.asset(
                                            'images-dev/ps/A10 - color.jpg'),
                                        DenverRadio(
                                            index: 10,
                                            text: 'Mostra que quer?',
                                            fase: "PS"),
                                        Image.asset(
                                            'images-dev/ps/A11 - color.jpg'),
                                        DenverRadio(
                                            index: 11,
                                            text: 'Bate palmas?',
                                            fase: "PS"),
                                        Image.asset(
                                            'images-dev/ps/A12 - color.jpg'),
                                        DenverRadio(
                                            index: 12,
                                            text:
                                                'Segura uma xícara ou copo e ${eStore.controllerKidName.text} o conteúdo sozinho(a)?',
                                            fase: "PS"),
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const DenverLGPage(),
                                                  ));
                                            },
                                            child:
                                                const Text("Proxima avaliação"),
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
