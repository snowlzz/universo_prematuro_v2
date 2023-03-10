import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa14Page extends StatefulWidget {
  final String title;
  const Tarefa14Page({Key? key, this.title = 'Tarefa14Page'}) : super(key: key);
  @override
  Tarefa14PageState createState() => Tarefa14PageState();
}

class Tarefa14PageState extends State<Tarefa14Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV14").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV14';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV14';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 14"),
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
                                "SIGA A 14?? TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * .8,
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
                                          //height: 210.0,
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
                                              'images/46 IMAGEM 07.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/46 IMAGEM 01.png',
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
                                                    'images/ballon91.png')),
                                          ),
                                          child: regText(
                                              '\u25CF Movimento',
                                              'Todos os movimentos que favorece '
                                                  'o controle do pesco??o e cabe??a sem apoio s??o importantes para '
                                                  '${store.controllerKidName.text}. O rolar e sentar com apoio devem ser estimulados para o '
                                                  'ganho do movimento.'),
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
                                                      'images/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Som',
                                                'Aumente a percep????o para os sons ao seu'
                                                    ' arredor e do pr??prio ambiente. ?? importante associar o ru??do do'
                                                    ' local e o nome para iniciar o reconhecimento.'),
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
                                                      'images/ballon91.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                'Os brinquedos devem ser lavados e '
                                                    'higienizados para garantir a sa??de de ${store.controllerKidName.text}.'),
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
                                                      builder: ((context) => const TaskFourt())
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
class TaskFourt extends StatefulWidget {
  const TaskFourt({super.key});

  @override
  State<TaskFourt> createState() => _TaskFourtState();
}

class _TaskFourtState extends State<TaskFourt> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 14"),
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
                height: MediaQuery.of(context).size.height * 6.5,
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
            stg1: '\u2055 Estimule ${store.controllerKidName.text} a bater palminha, coloque ${store.controllerKidName.text} na '
                'posi????o sentada com apoio e de frente para voc?? canta uma '
                'm??sica, uma sugest??o ?? a m??sica dos parab??ns.',
          ),textCTRST(stg1: '\u2055 Um relacionamento est??vel e seguro, com '
              'carinho e amor, ?? a melhor forma de desenvolver uma crian??a na '
              'inf??ncia. Sempre demonstre carinho para beb??. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ainda na posi????o sentada ofere??a um brinquedo para '
                '${store.controllerKidName.text} alcan??ar, de imediato coloque o brinquedo no campo visual'
                ' de ${store.controllerKidName.text}, mas com uma dist??ncia, estimule o deslocamento do'
                ' tronco para a busca do brinquedo. Fique atenta para as quedas '
                'na lateral.',
          ),textCTRST(stg1: '\u2055 As crian??as podem desenvolver alergias, o '
              'que mais estimula s??o cortinas, tapetes, cobertores, brinquedos '
              'de pel??cia, mofo de parece e umidade. Vamos manter o local bem '
              'ventilado!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Manter na posi????o sentada e oferecer o brinquedo ou '
                'algum est??mulo na lateral para que ${store.controllerKidName.text} execute o girar da '
                'cabe??a com um deslocamento suave do tronco. Estimule do lado '
                'direito e esquerdo para manter a resposta do movimento para os'
                ' dois lados.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 ?? momento de conversar com ${store.controllerKidName.text}! Fa??a barulhos com a '
                'boca e incentive ${store.controllerKidName.text} a repetir (???aaaa???, ???angu???, ???oi???). Fa??a '
                'os barulhos com movimentos bem marcados da boca, sempre ensine'
                ' beb?? como fazer os movimentos da boca para que ${store.controllerKidName.text} o imite.',
          ),textCTRST(stg1: '\u2055 Seu trabalho ?? apresentar beb?? ao mundo e o'
              ' mundo a ele(a). Voc?? ser?? sua companhia e guia, por isso ?? '
              'importante dar ?? ${store.controllerKidName.text} a confian??a necess??ria para testar sua '
              'curiosidade e, ao mesmo, assegurar sua prote????o.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Uma m??sica calma no ambiente ajuda nos intervalos dos'
                ' est??mulos direcionados (tarefas) e proporciona tranquilidade '
                'para ${store.controllerKidName.text} se movimentar livremente sem ajuda. Explorar o '
                'ambiente de forma independente colabora para o ganho do '
                'desenvolvimento.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Incentive ${store.controllerKidName.text} ao movimento do sentar! De ',
            stg2: 'barriguinha para cima',
            stg3: ', ofere??a seus dedos para ${store.controllerKidName.text} segurar com as m??os e d?? o '
                'apoio para que ele (a) levante o tronco da superf??cie, '
                'utilizando os m??sculos do tronco para ganhar for??a e preparar '
                'para novos ganhos motores.',
          ),textCTRST(stg1: '\u2055 Vamos cuidar da sa??de bucal de ${store.controllerKidName.text}, ?? '
              'importante manter a limpeza da gengiva e boquinha. N??o deixe '
              'para depois, vamos fazer este cuidado como uma rotina di??ria.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Agora ?? a hora de brincar de barriguinha para baixo, '
                'colocar brinquedos ao redor de ${store.controllerKidName.text}, alguns pr??ximos e outro'
                ' de interesse um pouco mais distantes, deixe livremente a '
                'busca dos objetos. Mantenha uma observa????o a dist??ncia, '
                'somente para manter o cuidado e prote????o contra riscos.'
          ),textCTRST(stg1: '\u2055 Mantenha rigorosamente a limpeza dos '
              'objetos que ${store.controllerKidName.text} coloca na boca.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Converse com ${store.controllerKidName.text}, mas evite falar infantilizando,'
                  ' fale com sua tonalidade normal.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} deitado ',
            stg2: 'de barriga para cima',
            stg3: ' voc?? poder?? movimentar o brinquedo de um lado para '
                'outro, ${store.controllerKidName.text} dever?? ser estimulado/a girar a cabe??a do centro '
                'para a lateral, fazendo com que eventualmente ${store.controllerKidName.text} role para a'
                ' posi????o lateral.',
          ),textCTRST(stg1: '\u2055 Se atente a caderneta de vacina????o. As '
              'vacinas de beb?? est??o em dia?'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Apoiar em baixo dos bracinhos de ${store.controllerKidName.text} e de frente para'
                ' voc??, deixa acontecer o apoio dos pezinhos na superf??cie, mas'
                ' n??o deixa ficar e permanecer todo o peso corporal, brinca de'
                ' pula, pula sempre com o apoio.'
          ),textCTRST(stg1: '\u2055 N??o deixa ${store.controllerKidName.text} sem supervis??o de um adulto,'
              ' pode observar mesmo em curtas dist??ncias.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante os movimentos voc?? dever?? conversar com '
                  '${store.controllerKidName.text} para incentiva a execu????o e repeti????o do movimento.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos deixar ${store.controllerKidName.text} com movimentos livres! Explorar '
                'todas as posi????es corporais e deixar ele brincar com seus '
                'pezinhos e m??ozinhas. Em alguns momentos deixar ${store.controllerKidName.text} na '
                'posi????o de barriguinha para baixo, depois barriguinha para cima.',
          ),textCTRST(stg1: '\u2055 Nunca d?? medicamentos a beb?? sem a '
              'recomenda????o de um m??dico. ?? importante que sempre seguir as '
              'recomenda????es dadas pelo(a) pediatra. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Para o momento de tranquilidade voc?? poder?? deitar de'
                ' lateral e colocar ${store.controllerKidName.text} tamb??m de lateral virado para voc??, '
                'face a face. ?? hora de conversar baixinho, cantar, fazer '
                'caretinha (express??es faciais) e quem sabe pegar no soninho.'
          ),textCTRST(stg1: '\u2055 Verifique sempre a temperatura do ambiente '
              'para escolher a roupa ideal para aquele per??odo. As m??ozinhas e'
              ' pezinhos dever??o sempre estar quentinhos.'),
          const SizedBox(height: 10.0,),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante esses momentos aproveite para brincar e '
                  'cantar para o beb??.  Use a imagina????o e criatividade. '
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK5'),

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
