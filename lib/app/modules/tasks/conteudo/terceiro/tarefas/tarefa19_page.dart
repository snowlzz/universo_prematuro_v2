import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';


class Tarefa19Page extends StatefulWidget {
  final String title;
  const Tarefa19Page({Key? key, this.title = 'Tarefa19Page'}) : super(key: key);
  @override
  Tarefa19PageState createState() => Tarefa19PageState();
}

class Tarefa19PageState extends State<Tarefa19Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV19").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV19';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV19';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 19"),
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
                                "SIGA A 19?? TAREFA EM CASA",
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
                                              'images/fig79-5.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig79-4.jpeg',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
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
                                          '\u25CF Movimento',
                                          'A crian??a est?? adquirindo '
                                              'habilidades fundamentais. Nessa fase, incentive o sentar sem '
                                              'apoio e o arrastar no ch??o. O desenvolvimento de ${store.controllerKidName.text} est?? '
                                              'ocorrendo aos poucos e novas conquistas de habilidades v??o '
                                              'aparecer nesta nova etapa. Vamos continuar com as tarefas!'),
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
                                          20.0, 10.0, 20.0, 30.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Linguagem',
                                          'O est??mulo a linguagem ?? muito '
                                              'importante e ${store.controllerKidName.text} vai aprender mais se o ambiente possuir rela????o'
                                              ' saud??vel. Estimule, converse, beije, aninhe, brinca, convive com'
                                              ' os familiares e amigos, s??o exemplos de como construir uma forte'
                                              ' rela????o e saud??vel.'),
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
                                          20.0, 10.0, 20.0, 25.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          '- Deixe ${store.controllerKidName.text} com objetos seguros, '
                                              'sem risco de acesso ??s pequenas pe??as.\n- Evite o risco de quedas.'
                                              ' Mantenha ${store.controllerKidName.text} em lugar plano e seguro. Cuidado com lugares altos.'),
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
                                                      builder: ((context) => const TaskNinet())
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
class TaskNinet extends StatefulWidget {
  const TaskNinet({super.key});

  @override
  State<TaskNinet> createState() => _TaskNinetState();
}

class _TaskNinetState extends State<TaskNinet> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 19"),
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
                height: MediaQuery.of(context).size.height * 7.5,
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
                                  const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
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

                      textCTRST(
            stg1: '\u2055 A explora????o do ambiente torna-se uma atividade '
                'dominante para ${store.controllerKidName.text}. O espa??o de conviv??ncia est?? ?? espera de '
                '${store.controllerKidName.text} para ser descoberto. Incentive ${store.controllerKidName.text} a explorar em alguns '
                'momentos sozinho(a), o espa??o da casa e tamb??m com os seus '
                'brinquedos, para perceber todos os objetos do ambiente, n??o '
                'esque??a, sempre com supervis??o e em um local seguro.'),textCTRST(stg1: '\u2055 A explora????o de objetos e do ambiente torna-se uma atividade dominante. Incentive ${store.controllerKidName.text} a explorar com independ??ncia todos os ambientes da casa, sempre com supervis??o. Observe a rea????o de ${store.controllerKidName.text} nas brincadeiras!'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Deixe ${store.controllerKidName.text} um tempinho sozinho de barriguinha para '
                  'baixo, coloque alguns brinquedos na frente e vamos observar o'
                  ' deslocamento de ${store.controllerKidName.text} para o alcance do objeto. Aos poucos a '
                  'dist??ncia do brinquedo deve ser maior, para ${store.controllerKidName.text} percorrer o '
                  'maior deslocamento.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV19TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos estimular a independ??ncia de ${store.controllerKidName.text}! D?? o '
                  'brinquedo favorito.'
          ),textCTRST(stg1: '\u2055 Retire os enfeites, m??veis leves que podem cair em cima de ${store.controllerKidName.text}. Lembre-se, com o desenvolvimento a crian??a explora melhor o ambiente. ?? incr??vel! Ontem o movimento n??o era executado e neste momento o movimento pode aparecer. Observamos que ?? o marco do primeiro aparecimento do novo movimento.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Nessa fase, ${store.controllerKidName.text} responde quando o chama, faz '
                  'imita????o de gestos e caretas com a express??o do rosto. '
                  'Fortale??a a mem??ria de ${store.controllerKidName.text}, chamando pelo seu nome e inicie'
                  ' um di??logo com ${store.controllerKidName.text} nomeando tamb??m o brinquedo e objetos '
                  'que estiver em seu alcance. ?? importante sempre falar os '
                  'nomes dos objetos e mostra-los para ${store.controllerKidName.text}.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV19TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Brinquedos ou objetos que reproduzem barulho s??o '
                  'fascinantes para crian??as. Vamos aproveitar! Com ${store.controllerKidName.text} ',
              stg2: "sentado (a)",
              stg3: ", provoca sua aten????o com um barulho ao redor de"
                  " ${store.controllerKidName.text}, assim poder?? movimentar a cabe??a e o corpo para olhar"
                  " em dire????o ao som e descobrir qual o objeto est?? "
                  "proporcionando o som, assim conseguiremos estimular ${store.controllerKidName.text} nos"
                  " movimentos laterais."
          ),textCTRST(stg1: '\u2055 Fique atenta(o) a troca de fraldas. Nunca deixe fralda suja por mais tempo al??m do necess??rio.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Vamos aproveitar esse momento dando-lhe aten????o para'
                  ' que sinta seguran??a e afeto. Fale com ${store.controllerKidName.text} sempre sorrindo '
                  'brincando com express??es faciais de carinho. Momentos alegres'
                  ' e agrad??veis colaboram para o melhor aprendizado e desenvolvimento.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} est?? desenvolvendo e crescendo, consegue comunicar com maior independ??ncia, mas ?? hora de redobrar a aten????o.\n- Nunca deixe ${store.controllerKidName.text} totalmente sozinho sem supervis??o,\n- N??o deixe com pessoas desconhecidas, proteja contra os acidentes dom??sticos.\n- Verifique na casa o que poderia oferecer perigo, algum m??vel, objetos pequenos e lembre, essa fase ${store.controllerKidName.text} pode segurar em superf??cie mais alta para se levantar, cuidado com toalhas de mesa em seu alcance.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV19TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 ?? hora de buscar o brinquedo no ch??o, de barriga '
                  'para baixo ${store.controllerKidName.text} dever?? ser estimulado para pegar ou recuperar'
                  ' o objeto (brinquedo, coisas representativas da casa), assim'
                  ' ir?? fazer o movimento de arrastar. No in??cio pode ajudar com'
                  ' o apoio de suas m??os no pezinho para impulsionar e logo '
                  'estar?? executando o movimento sem a ajuda.'
          ),textCTRST(stg1: '\u2055 Neste momento do desenvolvimento os objetos menores podem ser alcan??ados e manuseados pela crian??a. N??o deixe pe??as pequenas nos locais de acesso (ch??o, ber??o), muito cuidado com rem??dios, principalmente quando acidentalmente caem no ch??o, objetos pontiagudos tamb??m gera risco, os materiais de limpeza devem ser manuseados longe das crian??as e armazenados em ambientes seguros.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Vamos brincar de esconde/esconde. Para a brincadeira'
                  ', vamos pegar o brinquedo que ${store.controllerKidName.text} gosta, come??ou a '
                  'brincadeira, esconde o brinquedo e depois mostra o brinquedo'
                  ' e fala, achou! Mas agora ?? hora de deixar ${store.controllerKidName.text} fazer um '
                  'esfor??o e tentar pegar o brinquedo com o deslocamento do '
                  'arrastar e/ou ',
              stg2: "sentado (a)",
              stg3: " deslocando o corpo com a inclina????o para a "
                  "frente ou para a lateral. Pega novamente o brinquedo e repete"
                  " a brincadeira, ?? importante tamb??m o processo de repeti????o."
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV19TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Nessa fase, ${store.controllerKidName.text} come??a a dialogar e se torna mais '
                  'conversador. Fale como foi o seu dia para ${store.controllerKidName.text}, estimulando o'
                  ' di??logo, pega objetos e nomeia, canta m??sica infantil.'
          ),textCTRST(stg1: '\u2055 N??o compra ou ofere??a brinquedos que n??o s??o adequados para a idade de ${store.controllerKidName.text}. Pode gerar riscos. Observa as mudan??as no desenvolvimento de ${store.controllerKidName.text} e registre. Compartilha as conquistas! Deixe as fotos no ??lbum do aplicativo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Lembre-se sempre, estimule o olhar fixo face a face'
                  ' e deixe ${store.controllerKidName.text} ouvir sua voz, dando-lhe aten????o, para que se '
                  'sinta seguro em fazer parte do di??logo. Fale com ${store.controllerKidName.text} sempre'
                  ' sorrindo brincando com express??es faciais de carinho.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Nesta etapa, teremos que estimular as brincadeiras '
                  'de barriga para baixo de ${store.controllerKidName.text}, para conseguir o movimento '
                  'arrastar e gatinhar. Quando o movimento estiver ainda dif??cil'
                  ' para a execu????o ${store.controllerKidName.text} ficar?? um pouco irritado, manifestando'
                  ' com chorinho, ent??o ?? hora de ajudar para ${store.controllerKidName.text} conseguir '
                  'completar o movimento. Vamos persistindo neste movimento de '
                  'arrastar e engatinhar, ?? muito importante para alcan??ar as '
                  'pr??ximas etapas.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 A brincadeira no ch??o com bolas pequenas de '
                  'diferentes cores ajuda nesta conquista. Deixe ${store.controllerKidName.text} de barriga'
                  ' para baixo e voc?? fica na frente mostrando os movimentos com'
                  ' as bolas, e se emitir sons aproveita para chamar ?? aten????o.'
                  ' Vamos ver como ${store.controllerKidName.text} reage com essa brincadeira! ${store.controllerKidName.text} foi na'
                  ' dire????o da bola?'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV19TASK5'),
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
