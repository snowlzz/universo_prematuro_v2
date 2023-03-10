import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa15Page extends StatefulWidget {
  final String title;
  const Tarefa15Page({Key? key, this.title = 'Tarefa15Page'}) : super(key: key);
  @override
  Tarefa15PageState createState() => Tarefa15PageState();
}

class Tarefa15PageState extends State<Tarefa15Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV15").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV15';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV15';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 15"),
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
                                "SIGA A 15?? TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * 1,
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
                                          height: 320.0,
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
                                            'images/46 IMAGEM 04.png',
                                            width: 250,
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
                                              'A posi????o de barriguinha para '
                                                  'baixo ajuda para o ganho do desenvolvimento motor, a perman??ncia'
                                                  ' nesta posi????o um pouquinho todos os dias ajuda para alcan??ar os'
                                                  ' marcos do desenvolvimento.'),
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
                                      MediaQuery.of(context).size.height * 1.31,
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
                                                'A linguagem ?? desenvolvida com o '
                                                    'est??mulo recebido do ambiente, voc?? faz parte deste processo. '
                                                    'Converse, canta e dan??a.......'),
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
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 40.0,
                                                right: 40.0,
                                                bottom: 20.0),
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 10.0, 20.0, 30.0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'images/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                'Ao transportar ${store.controllerKidName.text}, se atente ?? '
                                                    'maneira correta que os profissionais sugerem: no carro, sempre '
                                                    'em uma cadeira pr??pria para a idade.'),
                                          ),
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
                                                      builder: ((context) => const TaskFif())
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
class TaskFif extends StatefulWidget {
  const TaskFif({super.key});

  @override
  State<TaskFif> createState() => _TaskFifState();
}

class _TaskFifState extends State<TaskFif> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 15"),
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
                height: MediaQuery.of(context).size.height * 6.2,
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

                      textCTRST(
            stg1: '\u2055 Deixe ${store.controllerKidName.text} sentado(a), com apoio de almofadas. Mostre '
                'brinquedos para ${store.controllerKidName.text}, de modo que fa??a com que estique os '
                'bra??os para agarrar o brinquedo. ?? momento da tentativa de '
                'pegar sozinho/a o brinquedo e explorar. Oferecer brinquedos de'
                ' formas e texturas diferentes, diversas cores e tamanhos '
                'ajudam para o desenvolvimento sensorial.',
          ),textCTRST(stg1: '\u2055 Cuidado com as brincadeiras de crian??as mais'
              ' velhas, neste momento sempre dever?? ter supervis??o do adulto por'
              ' perto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Express??es, quando ${store.controllerKidName.text} sorrir, retorne interagindo '
                'com um largo sorriso para que entenda que interagiu com voc?? '
                'por meio do sorriso. Sempre que ${store.controllerKidName.text} conseguir pegar o '
                'brinquedo d?? parab??ns e incentivo para repetir a a????o.'
          ),textCTRST(stg1: '\u2055 N??o permita que ${store.controllerKidName.text} brinque com utens??lios'
              ' dom??sticos, ofere??a somente brinquedos pr??prios para a idade de'
              ' material seguro.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV15TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Na posi????o sentado com apoio brinque de face a face e '
                'de olho no olho, estimule a imita????o dos sons (ah..., papa, '
                'mama, ??...., dada, uhhh, eh...).',
          ),textCTRST(stg1: '\u2055 Nessa fase, ainda ?? importante esterilizar '
              'adequadamente objetos que ${store.controllerKidName.text} use no seu dia a dia e mesmo os '
              'brinquedos.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Segure ${store.controllerKidName.text} no colo de frente para a outra pessoa e '
                'deixe ${store.controllerKidName.text} inclinar um pouquinho para a frente para controlar '
                'a cabe??a e parte superior do tronco. A outra pessoa pode '
                'mostrar brinquedo, conversar e fazer folia. Vamos animar este '
                'momento.'
          ),textCTRST(stg1: '\u2055 N??o deixe nenhum brinquedo, travesseiros e '
              'algum tipo de pano solto no ber??o, proteja ${store.controllerKidName.text} de acidentes. '
              '${store.controllerKidName.text} n??o deve dormir na cama dos pais, pois pode acontecer '
              'sufoca????o.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV15TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Hora de estimular a percep????o da crian??a. Ofere??a ?? '
                '${store.controllerKidName.text}, de ',
            stg2: 'barriguinha para cima',
            stg3: ', um brinquedo colorido, se poss??vel que emita sons, e '
                'deixe-o em cima de ${store.controllerKidName.text} (altura do peito). Incentive ${store.controllerKidName.text} a '
                'tentar segurar o brinquedo.',
          ),textCTRST(stg1: '\u2055 Crie uma rotina para ${store.controllerKidName.text}. Coloque ${store.controllerKidName.text} '
              'para dormir sempre no mesmo hor??rio, assim ser?? criado uma '
              'rotina de sono mais adequada a voc?? e ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Aproveite esse momento para conversar com ${store.controllerKidName.text}, a '
                'linguagem ?? muito estimulada nesse momento. A frequ??ncia do '
                'di??logo com ${store.controllerKidName.text} ?? primordial. Toda a????o deve ser demonstrada '
                'e nomeada. ???Olha o urso (brinquedo) ???, ???cad?? a bola amarela???, '
                'entre outras situa????es da casa.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV15TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Brinque com ${store.controllerKidName.text} fazendo caretas, abra bem a boca, '
                'coloque a l??ngua para fora, fa??a bicos e emita sons parecidos '
                'com os que ele (a) faz para estimular a imita????o. ',
          ),textCTRST(stg1: '\u2055 Fique atenta em ambientes com escadas, '
              'evite quedas e acidentes. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Cada movimento da face dever?? seguir um som, ru??do e '
                'express??o. Imitar caminh??o, caretinha (bichinho)......'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} deve manter-se distante no momento das'
              ' tarefas no ambiente da cozinha. N??o deixe ${store.controllerKidName.text} pr??ximo ao fog??o'
              ' e materiais de risco.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Vamos lembrar de estimular o rolar. Barriguinha '
                  'para cima, virar para barriguinha para baixo. Barriguinha '
                  'para baixo, virar para cima. Estes movimentos podem ser '
                  'realizados com a sua ajuda. Logo ${store.controllerKidName.text} estar?? executando '
                  'sozinho, precisamos treinar o movimento.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV15TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos cantar e estimular todos os movimentos '
                'corporais, at?? agora explorados. Na hora de trocar a fralda ou '
                'na hora do banho, nomeia as partes do corpo e mostre para ${store.controllerKidName.text}'
                '. Mostre o p?? para visualiza????o, fale o nome p?? para escutar e'
                ' toque com uma press??o leve no p?? para sentir. Estamos '
                'estimulando os sentidos sensoriais. Pode repetir com a m??o'
                ' tamb??m.',
          ),textCTRST(stg1: '\u2055 Cada fam??lia tem um modo de cuidar de seus '
              'filhos, mas ?? preciso que tenha uma rotina di??ria, com hor??rios '
              'para o banho, alimenta????o, para o sono e tamb??m para ${store.controllerKidName.text} brincar'
              '. ${store.controllerKidName.text} pode ficar nervoso e inseguro quando h?? muita altera????o no'
              ' seu dia-a-dia.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 De barriguinha para baixo deixar na frente de ${store.controllerKidName.text} '
                'brinquedo que emite som e de cores. Observa como ser?? a rea????o'
                ' de ${store.controllerKidName.text} e depois estimule mostrando e movimentando o brinquedo'
                ' para que ${store.controllerKidName.text} tenha interesse em busc??-lo. Ao final deixe o '
                'brinquedo um pouquinho fora de alcance de ${store.controllerKidName.text} e deixe fazer '
                'for??a para alcan??a-lo.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV15TASK5'),

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
