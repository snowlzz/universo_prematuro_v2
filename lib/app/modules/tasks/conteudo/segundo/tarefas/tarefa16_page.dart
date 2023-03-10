import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa16Page extends StatefulWidget {
  final String title;
  const Tarefa16Page({Key? key, this.title = 'Tarefa16Page'}) : super(key: key);
  @override
  Tarefa16PageState createState() => Tarefa16PageState();
}

class Tarefa16PageState extends State<Tarefa16Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV16").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV16';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV16';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 16"),
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
                                "SIGA A 16?? TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * 1.3,
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
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 20.0,
                                      ),
                                      // decoration: BoxDecoration(
                                      //     border: Border.all(
                                      //         color: Color.fromARGB(
                                      //             255, 101, 188, 89),
                                      // width: 3.0)),
                                      child: Image.asset(
                                          'images/46 IMAGEM 02.png'),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              left: 20.0,
                                              right: 20.0,
                                              bottom: 20.0),
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 40.0),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'images/ballon9.png')),
                                          ),
                                          child: regText(
                                              '\u25CF Movimento',
                                              'Todos os movimentos conquistados '
                                                  's??o importantes, ?? hora de aumentar a dificuldade para vencermos'
                                                  ' as pr??ximas etapas. Frente a uma conquista determinaremos outros'
                                                  ' passos a serem alcan??ados.'),
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
                                      MediaQuery.of(context).size.height * 1.43,
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
                                                left: 20.0,
                                                right: 20.0,
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
                                                'Os sons da fala devem ser apresentados '
                                                    'de forma clara e deve identificar o objeto correspondente. As '
                                                    'm??sicas devem ser pr??prias para a idade, mantendo o ambiente '
                                                    'tranquilo.'),
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
                                                left: 20.0,
                                                right: 20.0,
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
                                                'N??o deixe de comparecer as '
                                                    'consultas peri??dicas, todas as informa????es de profissionais s??o '
                                                    'importantes para o desenvolvimento. Quando tiver alguma d??vida '
                                                    'sempre procurar a informa????o de forma segura, com profissionais.'
                                                    ' N??o introduzir nada de novo sem a aprova????o de um profissional.'),
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
                                                      builder: ((context) => const TaskSixt())
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
class TaskSixt extends StatefulWidget {
  const TaskSixt({super.key});

  @override
  State<TaskSixt> createState() => _TaskSixtState();
}

class _TaskSixtState extends State<TaskSixt> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 16"),
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
                height: MediaQuery.of(context).size.height * 6,
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

                      const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Estimule a independ??ncia de ${store.controllerKidName.text}! Deixe-o/a brincar '
                'livre em todas as posi????es corporais. Intercalando a '
                'barriguinha para baixo, barriguinha para cima e sentado com apoio.',
          ),textCTRST(stg1: '\u2055 Mantenha os registros de ${store.controllerKidName.text} na caderneta '
              'de sa??de da crian??a, ?? um documento importante de informa????o e '
              'direcionamento para a boa sa??de. Todo o controle de vacina pode '
              'ser seguido pela caderneta.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 No seu colo deixe ${store.controllerKidName.text} firmar as perninhas como se '
                'estivesse na posi????o de p??, brinca como o pula-pula. O seu '
                'apoio (m??os) dever??o ser posicionadas no tronco de ${store.controllerKidName.text} '
                '(embaixo do bra??o), somente para adquirir a percep????o da '
                'posi????o e n??o para adquirir a posi????o de p??, ainda n??o estamos'
                ' na hora de trabalhar a fun????o da posi????o de p??.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV16TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Hora do banho tamb??m pode ser hora de estimular o '
                'desenvolvimento de ${store.controllerKidName.text}! Proporcionar diferentes sensa????es na '
                'pele de com a espuma, sabonete e m??os. Cuidado com o rostinho,'
                ' principalmente nariz, boca e olhos.',
          ),textCTRST(stg1: '\u2055 N??o se deve oferecer utens??lios que um '
              'adulto est?? usando para ${store.controllerKidName.text}. A imunidade de um adulto ?? '
              'diferente da crian??a, a crian??a pode desenvolver infec????es ao '
              'compartilhar objetos.   '),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Na posi????o sentada com apoio vamos estimular o '
                  'segurar com as duas m??os de ${store.controllerKidName.text}, oferecer brinquedos de '
                  'tamanhos e pesos diferentes, deixe ${store.controllerKidName.text} segurar sozinho e se'
                  ' o brinquedo cair no alcance de ${store.controllerKidName.text} deixe pegar sozinho.'
          ),
          const SizedBox(height: 10,),
          Radin(task:'DEV16TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos ensinar ${store.controllerKidName.text} a bater palminha! Fa??a voc?? o '
                'movimento e incentive ${store.controllerKidName.text} a te imitar, cante m??sicas alegres,'
                ' com ritmos animados, como o ???Parab??ns???.',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} est?? em uma fase de explora????o e leva '
              'todos os objetos que encontra a boca. Tome cuidado com acidentes'
              ' evit??veis e mantenha bem limpo todos os objetos e locais.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Abuse das caretas! Fa??a caras engra??adas, '
                  'estimulando o sorriso e o brincar saud??vel. Sempre '
                  'reproduzindo as caretas com sons que representem a fala. '
                  'Essa brincadeira pode introduzir os familiares e amigos.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Sentado com inclina????o para tr??s (${store.controllerKidName.text} conforto e/'
                  'ou carrinho) estimule a visualiza????o do pr??prio pezinho de '
                  '${store.controllerKidName.text} e incentive a pegar o pr??prio p??. ?? importante que ${store.controllerKidName.text}'
                  ' explore as pr??prias m??os e p??s.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV16TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar de forma invertida! Algu??m segura no '
                '${store.controllerKidName.text} colo e voc?? fica na frente, brinque e chame ${store.controllerKidName.text} para vir'
                ' para o seu colo, deixe ${store.controllerKidName.text} manifestar os movimentos de forma'
                ' espont??nea, que representem a vontade de ir para o seu colo.',
          ),textCTRST(stg1: '\u2055 Mantenha o ambiente alegre, sorria e converse'
              ' com ${store.controllerKidName.text}, o aconchego da casa faz ${store.controllerKidName.text} se sentir protegido.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Agora ?? ideal elogiar! Elogie o sorriso, os '
                  'movimentos que ele(a) est?? aprendendo, tudo ?? importante'
                  ' para o desenvolvimento ideal.'
          ),textCTRST(stg1: '\u2055 Evite lugares com muitas pessoas, como '
              'shoppings, supermercados e locais com muito barulho, nesta idade'
              ' as crian??as precisam de tranquilidade e rotina para os h??bitos'
              ' de vida.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV16TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Permitir o sono ?? importante para o desenvolvimento. '
                'Deixe uma luz fraca, somente um pontinho de claridade, ?? hora '
                'de descansar. ?? hora do sil??ncio ???PSIU???. ',
          ),textCTRST(stg1: '\u2055 Ensine, ??s pessoas mais pr??ximas, sobre a '
              'rotina e aprendizados que ${store.controllerKidName.text} conquistou at?? esse momento. '
              'Orgulhe-se de sua dedica????o, mam??e/papai/av??s/irm??os/cuidadores!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ensine, ??s pessoas mais pr??ximas, sobre a rotina e '
                'aprendizados que ${store.controllerKidName.text} conquistou at?? esse momento. Orgulhe-se '
                'de sua dedica????o, mam??e/papai/av??s/irm??os/cuidadores!',
          ),textCTRST(stg1: '\u2055 N??o permane??a com ${store.controllerKidName.text} em lugares que t??m '
              'pessoas fumando. A fuma??a e o cheiro do cigarro faz mal ?? sa??de.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 As brincadeiras e posi????es estimuladas para a '
                  'aquisi????o postural possibilitam a intera????o com outras '
                  'pessoas, para estimular a socializa????o em grupo.',
            stg2: '\n- Parab??ns pelo seu empenho, isso faz a diferen??a.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV16TASK5'),

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
