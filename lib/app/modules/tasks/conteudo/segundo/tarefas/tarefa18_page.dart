import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa18Page extends StatefulWidget {
  final String title;
  const Tarefa18Page({Key? key, this.title = 'Tarefa18Page'}) : super(key: key);
  @override
  Tarefa18PageState createState() => Tarefa18PageState();
}

class Tarefa18PageState extends State<Tarefa18Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV18").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV18';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV18';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 18"),
          centerTitle: true,
          elevation: 0,
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
                              const Text(
                                "SIGA A 18?? TAREFA EM CASA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * .9,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("MOVIMENTO",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    CarouselSlider(
                                      options: CarouselOptions(
                                          height: 285.0,
                                          reverse: false,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          enableInfiniteScroll: false),
                                      items: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images/46 IMAGEM 08.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/46 IMAGEM 09.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              left: 40.0,
                                              right: 40.0,
                                              bottom: 20.0),
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 35.0),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'images/ballon9.png')),
                                          ),
                                          child: regText(
                                              '\u25CF Movimento',
                                              'Estimule as diferentes posi????es '
                                                  'corporais, e a cada conquista, aumente a dificuldade. Dessa '
                                                  'maneira, a crian??a estar?? em constante evolu????o de sua '
                                                  'coordena????o corporal.'),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LEMBRE-SE: Todo cuidado com ${store.controllerKidName.text} ?? muito importante.",
                                        style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 212, 32, 0),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic),
                                        // textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 1.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("SOM",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    CarouselSlider(
                                      options: CarouselOptions(
                                        height: 285.0,
                                        reverse: false,
                                        autoPlay: false,
                                        enlargeCenterPage: true,
                                        enableInfiniteScroll: false,
                                      ),
                                      items: <Widget>[
                                        Container(
                                          //margin: EdgeInsets.symmetric(vertical: 10.0),
                                          //width: 350.0,
                                          //height: 250.0,
                                          decoration: BoxDecoration(
                                              // R: 239, G: 121, B: 91
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 101, 188, 89),
                                                width: 3.0,
                                              )),
                                          child: Image.asset(
                                              'images/ballon91.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images/ballon9.png'),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 40.0,
                                                right: 40.0,
                                                bottom: 20.0),
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 10.0, 20.0, 20.0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'images/ballon91.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Som',
                                                'Sempre converse com ${store.controllerKidName.text}, estimulando '
                                                    'suas respostas, como um di??logo entre duas pessoas.'),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("ATEN????O!",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 214, 14, 0),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          regText(
                                              '',
                                              '- Cuidado com queda: n??o deixe ${store.controllerKidName.text}'
                                                  ' sozinho(a) no trocador ou na cama.\n- Respeite a hora do sono, um '
                                                  'ambiente tranquilo ?? importante para o seu desenvolvimento.'),
                                          const SizedBox(height: 30),
                                          const Text(
                                              "LEMBRE-SE: a frequ??ncia de est??mulos ?? muito importante. Estimule "
                                              "sempre que poss??vel",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 212, 32, 0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.italic)),
                                          const SizedBox(height: 30),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0,
                                                right: 20.0,
                                                bottom: 40.0,
                                                top: 20.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: ElevatedButton.icon(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                                                label: const Text(
                                                  'Seguem as tarefas',
                                                  style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                icon: const Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskEighte())
                                                    )
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ]),
                          )))
            ],
          ),
        ));
  }
}

class TaskEighte extends StatefulWidget {
  const TaskEighte({super.key});

  @override
  State<TaskEighte> createState() => _TaskEighteState();
}

class _TaskEighteState extends State<TaskEighte> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 18"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                  child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * 4.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(0, 5))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      speechPerson(),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Guarde os brinquedos todos os dias para evitar '
                            'esconderijos de animais pe??onhentos (aranhas, escorpi??o). ',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Elogie sempre que ${store.controllerKidName.text} responder com algo'
                              ' que voc?? solicitou. Refor??o positivo ?? muito essencial para o'
                              ' desenvolvimento.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Refor??o positivo com frases motivadoras ?? muito '
                              'essencial para o desenvolvimento.'
                              '\nEnt??o vamos incentivar todas as tarefas que ${store.controllerKidName.text} executar.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Explorar as posi????es corporais (sentado, barriga '
                              'para baixo e rolar) ?? importante para finalizar essa etapa.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV18TASK1'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 ${store.controllerKidName.text} sentado com apoio, brinque de ???escondeu-achou???. '
                            'Coloque suas m??os sobre seu rosto, simulando o ???esconde???, e '
                            'retire as m??os ???achou???. Durante a brincadeira, fale bastante, '
                            'alternando o volume da voz. Essa brincadeira ir?? estimular o '
                            'desenvolvimento da coordena????o motora e linguagem. Vamos '
                            'incentivar a imita????o!',
                      ),
                      textCTRST(
                          stg1: '\u2055 Voc?? j?? instalou uma rotina de sono, '
                              'alimenta????o, brincadeira e banhos em ${store.controllerKidName.text}? Se n??o, ainda ?? hora '
                              'de estabelecer. A rotina domiciliar ajuda para o bom '
                              'desenvolvimento.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Durante as tarefas, certifique-se que ${store.controllerKidName.text} est?? bem '
                              'posicionado e com objetos ao redor que n??o oferece riscos. '),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV18TASK2'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1: '\u2055 Com ${store.controllerKidName.text} na ',
                        stg2: 'posi????o sentada',
                        stg3:
                            ', coloque tr??s caixas pequenas ?? sua frente, embaixo de uma'
                            ' das caixas coloque um brinquedo dele (a), escondendo-o. '
                            'Incentive ${store.controllerKidName.text} a achar o brinquedo e a escond??-lo em outra '
                            'caixa.',
                      ),
                      textCTRST(
                          stg1: '\u2055 O tempo do nascimento dos dentes varia '
                              'muito para cada crian??a. Fique atenta(o) a qualquer sinal que '
                              '${store.controllerKidName.text} demonstre, como levar muitos objetos e dedos a boca. Neste '
                              'momento, redobre os cuidados de higiene com a lavagem e '
                              'higieniza????o dos brinquedos.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Nesse momento, vamos estimular a independ??ncia de seus'
                              ' movimentos. Deixe ${store.controllerKidName.text} livre para levantar cada caixa e pegar'
                              ' o brinquedo. Mantenha sempre sons e intera????es verbais com '
                              '${store.controllerKidName.text}, durante as tarefas.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV18TASK3'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Vamos cantar! Com ${store.controllerKidName.text} ',
                        stg2: 'na posi????o sentada',
                        stg3:
                            ', coloque uma m??sica (pr??pria para a idade) e estimule a '
                            'dan??a. Voc?? pode fazer movimentos no ritmo da m??sica, como '
                            'bater as m??os e dar passos para as laterais, incentivando ${store.controllerKidName.text}'
                            ' a se movimentar tamb??m. Estamos indo muito bem com a estimula????o.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Cada dia, ${store.controllerKidName.text} adquire novas conquistas. '
                              'Orgulhe-se de ${store.controllerKidName.text} e de todo o suporte e cuidado que voc??s est??o'
                              ' dedicando.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(),
                      textCTRST(
                          stg1: '\u2055 Vamos entrar em outra'
                              ' fase. Est?? caminhando tudo bem!'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV18TASK4'),
                    ],
                  ),
                ),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
