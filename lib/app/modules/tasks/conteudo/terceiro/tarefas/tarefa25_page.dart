import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';
class Tarefa25Page extends StatefulWidget {
  final String title;
  const Tarefa25Page({Key? key, this.title = 'Tarefa25Page'}) : super(key: key);
  @override
  Tarefa25PageState createState() => Tarefa25PageState();
}

class Tarefa25PageState extends State<Tarefa25Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV25").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV25';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV25';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 25"),
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
                                "SIGA A 25?? TAREFA EM CASA",
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
                                              'images/fig79-10.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig79-1.jpeg',
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
                                          20.0, 10.0, 20.0, 45.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          'Todas as aquisi????es de movimentos'
                                              ' que ${store.controllerKidName.text} adquiriu s??o importantes para o seu desenvolvimento. ??'
                                              ' essencial que voc?? continue as tarefas e os est??mulos, cada '
                                              'conquista do movimento ser?? fundamental para ${store.controllerKidName.text} nas pr??ximas '
                                              'idades. A repeti????o dos movimentos deve acontecer para que novos'
                                              ' movimentos cheguem e sejam conquistados.'),
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
                                      MediaQuery.of(context).size.height * 1.22,
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
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 25.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          'Utilize sua voz como recurso para chamar'
                                              ' a aten????o de ${store.controllerKidName.text} com diferentes tons e vozes, estimulando sua '
                                              'audi????o. Como resultado ir?? estimular ${store.controllerKidName.text} a falar.'),
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
                                          20.0, 10.0, 20.0, 40.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          '?? preciso cuidar do ambiente para '
                                              'proteger ${store.controllerKidName.text} de ocorr??ncias al??rgicas, o ambiente deve ser limpo'
                                              ' diariamente, e evitar cortinas, tapetes, almofadas. A casa '
                                              'dever?? manter arejada com janelas abertas e cuidado com mofo e '
                                              'umidade nas paredes podem desencadear situa????o de adoecimento de'
                                              ' ${store.controllerKidName.text}.'),
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
                                                onPressed: () {Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskTwentFi())
                                                    )
                                                  );},
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
class TaskTwentFi extends StatefulWidget {
  const TaskTwentFi({super.key});

  @override
  State<TaskTwentFi> createState() => _TaskTwentFiState();
}

class _TaskTwentFiState extends State<TaskTwentFi> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 25"),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 70.0,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 100.0,
                                child: Image.asset("images/Personagemai.png"),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              //margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                              padding:
                                  // ignore: prefer_const_constructors
                                  EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images/ballon9.png')),
                              ),
                              child: const Text(
                                "Seja bem vinda!\nVamos seguir juntas as tarefas a cada dois"
                                " dias, nestes primeiros meses.\nVamos Come??ar?",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Estimule a independ??ncia de ${store.controllerKidName.text}! Deixe-o(a) brincar livre, de ',
              stg2: "barriguinha para cima e barriguinha para baixo",
              stg3: ". Deixe ${store.controllerKidName.text} rolar livremente e buscar com os pr??prios movimentos os brinquedos ou objetos pr??ximos."
          ),textCTRST(stg1: '\u2055 Nessa idade, ${store.controllerKidName.text} come??a a ficar mais tempo acordado, por isso ?? importante redobrar a aten????o para quedas e acidentes. O ambiente de maior tempo de perman??ncia de ${store.controllerKidName.text} deve ser seguro e bem ventilado, possibilitando os movimentos para as brincadeiras com supervis??o de um adulto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 A brincadeira ?? encaixe! Vamos estimular ${store.controllerKidName.text} a pegar uma pe??a de brinquedo ou objeto menor e colocar dentro de um lugar maior. Uma ideia! Vamos pegar algumas bolas pequenas e de diferentes tamanhos e na posi????o sentada deixe ${store.controllerKidName.text} pegar as bolas de colocar dentro de um pote. O movimento pode ser de guardar as bolas no pote ou ao contrario, tirar as bolas do pote.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Durante o banho de ${store.controllerKidName.text}, ensine as partes do corpo que voc?? estiver banhando. ???Agora vamos lavar a barriguinha???, ???agora vamos lavar os bra??os???, ????? hora de lavar o p????? assim por diante. Banho pode ser uma grande brincadeira.'
          ),textCTRST(stg1: '\u2055 Aprenda a lidar com as a????es de ${store.controllerKidName.text}. O desenvolvimento proporciona novos aprendizados, ent??o observe ${store.controllerKidName.text} em novas situa????es no espa??o do ambiente, resposta nas brincadeiras, visualiza????o de um brinquedo e/ou objeto, movimento de deslocamento para alcan??ar um brinquedo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 V?? interagindo vocalizando suas a????es. Sempre que poss??vel mantenha o contato visual ???olho no olho??? e sempre que ${store.controllerKidName.text} emitir sons na tentativa de se expressar, responda como se estivem conversando normalmente.'
          ),
          const SizedBox(height: 15.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Deixe ${store.controllerKidName.text} ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: <TextSpan>[
                const TextSpan(text: 'sentado (a)', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' em cima de uma almofada, ofere??a a m??o para ${store.controllerKidName.text} e deixe ${store.controllerKidName.text} executar o movimento para a posi????o em '),
                const TextSpan(text: 'p??', style: TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: '. Repete algumas vezes o movimento de sentar e levantar.'),
              ],
            ),
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} a engatinhar! Deixe seus brinquedos favoritos a, pelo menos, um metro de ${store.controllerKidName.text} e incentive para que ${store.controllerKidName.text} os busque, alcan??ando o brinquedo estimule ${store.controllerKidName.text} para ',
              stg2: "posi????o sentada",
              stg3: " para brincar um pouco."
          ),textCTRST(stg1: '\u2055 S??o muitos os afazeres durante o dia, uma boa organiza????o para as tarefas e hor??rios determinados para as atividades de ${store.controllerKidName.text} ajudar?? a manter uma rotina tranquila e, ${store.controllerKidName.text} permanecer?? calmo permitindo o desenvolvimento de novas habilidades.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Estimule ${store.controllerKidName.text} com diferentes brincadeiras e chama a aten????o com palavras, ???vem???, ???cad?? ${store.controllerKidName.text}???, ???v??m com a mam??e???.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Fa??a c??cegas! Desta forma, al??m de estimular as express??es e a linguagem (ao emitir sons) voc?? ir?? criar um ambiente leve e saud??vel para uma conex??o interativa saud??vel entre voc?? e ${store.controllerKidName.text}, o momento deve ser muito agrad??vel para voc?? tamb??m!'
          ),textCTRST(stg1: '\u2055 Sempre elogie ${store.controllerKidName.text} pelos seus aprendizados. Mesmo que erre ou n??o execute a tarefa como solicitada, ensine novamente a forma apresentada inicialmente. O ambiente para a atividade de aprendizagem deve ser agrad??vel e acolhedor.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Agora ?? ideal elogiar! Elogie o sorriso, os movimentos que ${store.controllerKidName.text} est?? aprendendo, tudo ?? importante para o desenvolvimento adequado. Voc?? ?? muito importante neste processo do desenvolvimento!'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK4'),

          const SizedBox(height: 60.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Deixe algum apoio perto de ${store.controllerKidName.text} e na posi????o ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: <TextSpan>[
                const TextSpan(text: 'barriguinha para baixo', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' estimule ${store.controllerKidName.text} arrastar/engatinhar no sentido do apoio e levantar. Se ${store.controllerKidName.text} n??o conseguir subir sozinho para a '),
                const TextSpan(text: 'posi????o em p??', style: TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ', voc?? pode ajudar, mas lembre-se, ?? importante reduzir as ajudas para concluir os movimentos, deixando independente.'),
              ],
            ),
          ),textCTRST(stg1: '\u2055 Fala ??s pessoas mais pr??ximas, sobre a rotina e aprendizados que ${store.controllerKidName.text} conquistou at?? esse momento. Orgulhe-se de sua dedica????o, mam??e/papai/av??s/irm??os/cuidadores! Cada crian??a apresenta suas particularidades no desejo de executar tarefas ensinadas no dia a dia. Observe a prefer??ncia de ${store.controllerKidName.text} para executar os movimentos e brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Ensine ??s pessoas mais pr??ximas sobre a rotina e aprendizados que ${store.controllerKidName.text} conquistou at?? esse momento. Orgulhe-se de sua dedica????o, mam??e/papai/av??s/irm??os/cuidadores!'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Estimule ${store.controllerKidName.text} demostrar seus avan??os ao papai e/ou aos familiares, parabenizando e valorizando seus esfor??os.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK5'),
          const SizedBox(height: 10.0,),
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
