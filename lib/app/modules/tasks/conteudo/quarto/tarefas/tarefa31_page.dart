import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';

class Tarefa31Page extends StatefulWidget {
  final String title;
  const Tarefa31Page({Key? key, this.title = 'Tarefa31Page'}) : super(key: key);
  @override
  Tarefa31PageState createState() => Tarefa31PageState();
}

class Tarefa31PageState extends State<Tarefa31Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV31").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV31';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV31';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 31"),
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
                                "SIGA A 31?? TAREFA EM CASA",
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
                                          height: 220.0,
                                          reverse: false,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          viewportFraction: 0.78,
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
                                              'images/fig1012-6.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig1012-10.jpeg',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
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
                                      child: regText('\u25CF Movimento',
                                          'Incentive para que sua crian??a pegue brinquedos de diferentes tamanhos, cores e pesos. Esse est??mulo ?? muito importante para o desenvolvimento da destreza manual, fundamental para qualquer crian??a. Estimule a pegar brinquedos menores para executar o movimento com os dois dedos, fazendo a pegada e sustenta????o do objeto'),
                                    ),
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
                                      MediaQuery.of(context).size.height * 1.25,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("LINGUAGEM",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
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
                                                'images/ballon91.png')),
                                      ),
                                      child: regText('\u25CF Linguagem',
                                          '?? importante voc?? sempre passar confian??a, afeto e incentivo na sua fala com ${store.controllerKidName.text}. Isso far?? a diferen??a no desenvolvimento da crian??a. '),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("CUIDADO!",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 214, 14, 0),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
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
                                          '\u25CF Cuidado!',
                                          'Retire os enfeites, m??veis leves '
                                              'que podem cair na crian??a. Lembre-se, com o desenvolvimento a '
                                              'crian??a explora melhor o ambiente. ?? incr??vel! Ontem o movimento'
                                              ' n??o era executado e neste momento o movimento pode aparecer. '
                                              'Observamos que ?? o marco do primeiro aparecimento do novo movimento.'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
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
                                                      builder: ((context) => const TaskThirteenO())
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
class TaskThirteenO extends StatefulWidget {
  const TaskThirteenO({super.key});

  @override
  State<TaskThirteenO> createState() => _TaskThirteenOState();
}

class _TaskThirteenOState extends State<TaskThirteenO> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 31"),
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
                height: MediaQuery.of(context).size.height * 7.7,
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
                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Coloque ${store.controllerKidName.text} para engatinhar em cima de diferentes texturas, de maneira segura. Em cima de cobertores, toalhas, tapetes, ',
            stg2: 'E.V.A',
            stg3: ', tudo vale para deixar ${store.controllerKidName.text} com melhor equil??brio e agilidade no movimento.'
          ),textCTRST(stg1: '\u2055 Tome cuidado com o tipo de m??sica que voc?? exp??e ${store.controllerKidName.text}. D?? prefer??ncias para m??sicas pr??prias para a idade infantil.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Durante essas descobertas, narre e converse sobre essas diferentes texturas, divirtam-se, afinal tudo ?? novo para ${store.controllerKidName.text}. Fa??a isso, sempre que poss??vel! Converse com ${store.controllerKidName.text} as coisas boas do dia, aproveita para voc?? relaxar.',
          ),textCTRST(stg1: '\u2055 Cante com ${store.controllerKidName.text} olhando nos olhos, para que se interesse em reproduzir o som.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Toda semana procure trocar os brinquedos/objetos, como exemplo, se ${store.controllerKidName.text} brincar com seis objetos, voc?? poder?? trocar tr??s ou dois, ent??o far?? um rod??zio dos brinquedos, tornando aquele movimento gostoso e de distra????o.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Conte uma hist??ria para ${store.controllerKidName.text}! A hist??ria se passa em uma fazenda e os personagens principais s??o os bichinhos que vivem nela, como vaca, boi, cachorro, gatinho, porquinho.',
          ),textCTRST(stg1: '\u2055 A crian??a nessa idade quer explorar e ?? muito curiosa. Tenha cuidado com objetos perigosos pr??ximos a ele(a), assim panelas no fog??o, baldes com ??gua, janelas sem prote????o, degraus e escadarias. Tamb??m evite deixar ${store.controllerKidName.text} explorar estantes ou mesas que possam balan??ar e que um objeto possa cair na crian??a. Evita acidentes, proteja sua crian??a!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 A cada vez que falar de um animalzinho, ensine ${store.controllerKidName.text} o barulho que o bichinho faz, direcionando-se face a face com ${store.controllerKidName.text}, para que observe o som sendo articulado em sua boca. Fa??a os ru??dos dos animais e se poss??vel mostre a figura e/ou mesmo um desenho produzido.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Cante uma can????o para ${store.controllerKidName.text}! Busque uma m??sica infantil que agrade ${store.controllerKidName.text} e cante para ele(a). Tente ensinar pequenas silabas das palavras que aparecem na m??sica.',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} come??a a aprender o significado da palavra N??O. Use-a quando necess??rio.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Can????es infantis s??o ??timas para a familiariza????o de frases e palavras, facilitando a aquisi????o de linguagem e compreens??o das crian??as. Qualquer tentativa de vocaliza????o de ${store.controllerKidName.text} deve ser estimulada.',
          ),textCTRST(stg1: '\u2055 Vista ${store.controllerKidName.text} de acordo com a temperatura ambiente. N??o sobrecarregue de roupas se estiver muito calor e tome cuidado ao deixar ${store.controllerKidName.text} no ch??o frio.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Um movimento para combinar, deixe um brinquedo ou objeto que ${store.controllerKidName.text} goste em cima do sof??, mostre e estimule ${store.controllerKidName.text} para pega-lo, pode ajudar segurando na m??o de ${store.controllerKidName.text}.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Depois, quando estiver de ',
            stg2: 'p?? com apoio (sof??, cadeira)',
            stg3: ' pegue a m??o de ${store.controllerKidName.text} e estimule a sentar no ch??o (pode deixar o brinquedo cair no ch??o para ficar mais divertido e interessante), vamos treinar o levantar e o agachamento.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos construir uma torre. Com ${store.controllerKidName.text} na posi????o ',
            stg2: 'sentado(a)',
            stg3: ', d?? blocos para que ${store.controllerKidName.text} consiga construir uma torre. Incentive a constru????o de uma torre alta, oferecendo aux??lio para ${store.controllerKidName.text} e quando precisar ficar em p?? para colocar os blocos que ficam no alto, voc?? poder?? ajudar com o apoio das m??os.A brincadeira tamb??m pode acontecer com ${store.controllerKidName.text} em p?? de frente ao sof?? ou cadeira.'
          ),textCTRST(stg1: '\u2055 ?? comum beb??s se incomodarem e chorarem por motivo de algum barulho estranho. Neste caso, ?? importante voc?? mostrar a origem do barulho e explicar que ele (a) est?? a salvo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Encoraje ${store.controllerKidName.text} a realizar os movimentos com os cubos e v?? conversando sobre as cores, formas e parabenize qualquer tentativa de ${store.controllerKidName.text}. Fa??a isso, sempre!',
              stg2: '\nOBS: ',
              stg3: 'Os blocos podem ser constru??dos com madeira, cubos de 2x2cm ou 3x3cmou de diferentes tamanhos e se quiser pintar*deixando tudo colorido e muito mais interessante.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Os movimentos dever??o ser associados, pois s??o processos de evolu????o do desenvolvimento. Com ${store.controllerKidName.text} deitado de barriguinha para cima estimule para sentar, se estiver de barriguinha para baixo, estimule virar de barriguinha para cima ou mesmo de barriguinha para baixo com apoio nas m??os levantar para a posi????o de p??. N??o ?? hora de andar, mas ?? hora de estimular a ficar na posi????o em p??.',
          ),textCTRST(stg1: '\u2055 Lembre-se: cada crian??a tem seu pr??prio ritmo para se desenvolver. Caso esteja com d??vidas, entre em contato conosco.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} ',
              stg2: 'sentado(a) no colo',
              stg3: ', de frente para voc??, ensine a cantar parab??ns, batendo as palminhas e levantando os bra??os.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Sempre que ${store.controllerKidName.text} emitir sons na tentativa de se expressar, interaja com ${store.controllerKidName.text} conversando de forma tranquila e calma para que observe as suas express??es, gestos e palavras. Determine esse tempo de exerc??cio para tamb??m conversar com ${store.controllerKidName.text} e observar suas rea????es.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK5'),

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
