import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa17Page extends StatefulWidget {
  final String title;
  const Tarefa17Page({Key? key, this.title = 'Tarefa17Page'}) : super(key: key);
  @override
  Tarefa17PageState createState() => Tarefa17PageState();
}

class Tarefa17PageState extends State<Tarefa17Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV17").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV17';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV17';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 17"),
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
                                "SIGA A 17?? TAREFA EM CASA",
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
                                          height: 280.0,
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
                                              'images/46 IMAGEM 01.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/46 IMAGEM 3A.jpeg',
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
                                            '?? hora para permitir uma '
                                                'movimenta????o livre e espont??nea, em um lugar seguro, oferecer '
                                                'espa??o para ${store.controllerKidName.text} se movimentar e aproveitar as conquistas dos '
                                                'marcos motores at?? o momento.'),
                                      ),
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
                                      MediaQuery.of(context).size.height * 1.4,
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
                                                '?? importante proporcionar momentos de '
                                                    'sil??ncio que oportunizar?? a express??o espont??nea da crian??a. '
                                                    'Deixa ${store.controllerKidName.text} perceber o seu pr??prio som.'),
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
                                                'N??o executar tarefas domesticas '
                                                    'com a crian??a no colo. Evite acidentes, n??o deixe a crian??a nas '
                                                    'depend??ncias da cozinha, pois oferece riscos desnecess??rios.'),
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
                                          ElevatedButton.icon(
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
                                                      builder: ((context) => const TaskSevent())
                                                    )
                                                  );
                                                },
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

class TaskSevent extends StatefulWidget {
  const TaskSevent({super.key});

  @override
  State<TaskSevent> createState() => _TaskSeventState();
}

class _TaskSeventState extends State<TaskSevent> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 17"),
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
                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Com a barriguinha para baixo ajudar ${store.controllerKidName.text} a dobrar os '
                            'joelhos e apoiar os p??s na sua m??o deixe ${store.controllerKidName.text} tentar '
                            'impulsionar-se para frente, fazendo um movimento de deslocamento.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Cuidado com a utiliza????o de produtos de '
                              'limpeza com cheiro forte, amaciante entre outros, pode manifestar'
                              ' sintomas de alergia de pele e respirat??ria.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Aproveitando a posi????o de barriguinha para baixo, '
                              'estimule ${store.controllerKidName.text} a levantar a parte superior do tronco com apoio'
                              ' dos bra??os. Converse com ${store.controllerKidName.text} para que consiga permanecer um '
                              'tempinho maior nesta posi????o de sustentar o peso corporal.'),
                      textCTRST(
                          stg1:
                              '\u2055 Lavar as m??os todas as vezes que for pegar '
                              '${store.controllerKidName.text} e/ou organizar o seu material e pertences.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV17TASK1'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1: '\u2055 Deixe ${store.controllerKidName.text} ',
                          stg2: 'de barriguinha para cima ',
                          stg3:
                              'e coloque um brinquedo na lateral dele. Incentive ${store.controllerKidName.text} a '
                              'rolar para alcan??ar o brinquedo e deixe ${store.controllerKidName.text} pegar e brincar '
                              'livremente.'),
                      textCTRST(
                          stg1: '\u2055 Tome cuidado com cabos el??tricos que '
                              'estiverem descascados ou desfiados. Evite expor ${store.controllerKidName.text} em ambiente'
                              ' que possuem esses cabos.  '),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Algumas posi????es n??o s??o de prefer??ncia de ${store.controllerKidName.text} e '
                              'no momento que experimenta a posi????o logo reclama com '
                              'chorinho e/ou gritos. Mas ?? importante que ${store.controllerKidName.text} acostume com'
                              ' essa posi????o, pois todas as posi????es corporais colaboram '
                              'com ganhos futuros para as novas conquistas (gatinhar, andar'
                              ' e correr).'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV17TASK2'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Coloque ${store.controllerKidName.text} sentado com apoio e ofere??a um brinquedo,'
                            ' deixe ${store.controllerKidName.text} segur??-lo e retire em seguida, como a brincadeira '
                            '???da e tira???. Fa??a isso com brinquedos de diferentes cores, '
                            'tamanhos e texturas.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Procure sempre o profissional de sa??de para'
                              ' tirar as d??vidas que forem surgindo com o desenvolvimento e '
                              'crescimento de ${store.controllerKidName.text}. '),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Estimule ${store.controllerKidName.text} a sentir diferentes texturas, formas,'
                              ' peso e percep????o de cores. Se poss??vel, ofere??a brinquedos '
                              'que reproduzam sons. '),
                      textCTRST(
                          stg1:
                              '\u2055 O carinho dos pais, av??s e pessoas queridas'
                              ' ajudam para o bom desenvolvimento com sa??de.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV17TASK3'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Coloque ${store.controllerKidName.text} sentado com apoio sobre diferentes '
                            'superf??cies (em cima da cama, no ch??o, na grama) e estimule a '
                            'se inclinar em varias dire????es para explorar o espa??o e '
                            'ambiente. As diferentes superf??cies ir??o estimular a for??a dos'
                            ' m??sculos respons??veis por manter a postura do tronco.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Fique atenta(o) as datas das consultas de '
                              '${store.controllerKidName.text}, ?? importante manter o cuidado nessa fase, precisamos '
                              'cuidar de ${store.controllerKidName.text}.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 A cada nova descoberta, comemore com ${store.controllerKidName.text} de maneira'
                              ' festiva, incentivando a curiosidade dos diferentes espa??os.'),
                      textCTRST(
                          stg1:
                              '\u2055 O desenvolvimento do elo entre os familiares'
                              ' e ${store.controllerKidName.text} favorece para o fator de prote????o para o desenvolvimento'
                              ' saud??vel.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV17TASK4'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Busque brinquedos que sejam poss??veis criar uma '
                            'hist??ria (teatrinho). Fa??a com que os personagens se movimentem'
                            ' para as laterais e verbalize com diferentes vozes. Crie '
                            'm??sicas para manter a aten????o e o foco de ${store.controllerKidName.text}. ',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 N??o deixe ${store.controllerKidName.text} sem supervis??o. ${store.controllerKidName.text} est?? em'
                              ' pleno desenvolvimento e todos os dias poder?? fazer movimentos '
                              'novos.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Fa??a com que a hist??ria seja din??mica, sempre se '
                              'movimentando para que ${store.controllerKidName.text} fique curioso e acompanhe os '
                              'movimentos (em cima, em baixo, direta, esquerda).'),
                      textCTRST(
                          stg1:
                              '\u2055 Aproveite para descansar um pouco quando '
                              '${store.controllerKidName.text} estiver dormindo.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos estimular os movimentos adquiridos e '
                              'proporcionar novas experi??ncias e conquistas.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV17TASK5'),
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
