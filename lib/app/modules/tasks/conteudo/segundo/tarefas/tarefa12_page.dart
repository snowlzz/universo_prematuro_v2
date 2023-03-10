import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa12Page extends StatefulWidget {
  final String title;
  const Tarefa12Page({Key? key, this.title = 'Tarefa12Page'}) : super(key: key);
  @override
  Tarefa12PageState createState() => Tarefa12PageState();
}

class Tarefa12PageState extends State<Tarefa12Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV12").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV12';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV12';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 12"),
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
                                "SIGA A 12?? TAREFA EM CASA",
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
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 20.0,
                                      ),
                                      width: 250.0,
                                      //height: 250.0,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 101, 188, 89),
                                              width: 3.0)),
                                      child: Image.asset(
                                          'images/46 IMAGEM 2A.jpeg'),
                                    ),
                                    Container(
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
                                          'A posi????o de sentado dever?? ser '
                                              'trabalhada com redu????o do apoio corporal. Os ganhos dos '
                                              'movimentos s??o gradativos e progressivos, ent??o vamos estimular.'
                                              ' Lembre que cada posi????o no in??cio tem a necessidade de ajuda e '
                                              'apoio e no momento da conquista os movimentos se tornam de forma'
                                              ' independente.'),
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
                                                'A cada som percebido colocar o nome '
                                                    'para a identifica????o. O som percebido seguido da verbaliza????o '
                                                    '???A porta bateu???.'),
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
                                                left: 20.0,
                                                right: 20.0,
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
                                                '\u25CF Aten????o!',
                                                'A crian??a precisa do carinho, da '
                                                    'alegria e do est??mulo para o seu melhor desenvolvimento. '
                                                    'Aproveite para oferecer!'),
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
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskTwelve())
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

class TaskTwelve extends StatefulWidget {
  const TaskTwelve({super.key});

  @override
  State<TaskTwelve> createState() => _TaskTwelveState();
}

class _TaskTwelveState extends State<TaskTwelve> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 12"),
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
                height: MediaQuery.of(context).size.height * 5.5,
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

                      const SizedBox(
                        height: 40.0,
                      ),

                      const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 ?? hora da hist??ria! Pegue dois ursinhos de pel??cia, '
                'ou dois bonequinhos, ou com fantoches, crie uma hist??ria para '
                '${store.controllerKidName.text} com muita alegria, sons e risadas. Se poss??vel, coloque '
                'uma can????o na hist??ria tamb??m.',
          ),textCTRST(stg1: '\u2055 N??o colocar fios ou cord??es no pesco??o de '
              '${store.controllerKidName.text}, nem para pendurar a chupeta.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Frases curtas, o tom de voz, gestos e as express??es '
                'faciais suaves e bem articuladas ajudam ${store.controllerKidName.text} perceber sensa????es'
                ' e sentidos da fala do adulto.',
          ),textCTRST(stg1: '\u2055 Mantenha sempre o ambiente lindo, arejado e'
              ' seguro, oferecer somente brinquedos apropriados para a idade.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV12TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 No per??odo da manh?? e tarde brincar com ${store.controllerKidName.text} na '
                'posi????o sentada, oferecer o apoio somente o necess??rio, deixa '
                'vencer os pequenos obst??culos. Na posi????o sentada a cabe??a n??o'
                ' poder?? ter apoio, somente apoio na cintura para baixo. Vamos '
                'em frente!',
          ),textCTRST(stg1: '\u2055 Nessa idade, tudo para ${store.controllerKidName.text} ?? uma '
              'brincadeira (tanto na alimenta????o quanto na hora do banho). '
              'Aproveite esses momentos para interagir! '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nas ',
            stg2: 'diferentes posi????es corporais ',
            stg3: 'deixar ${store.controllerKidName.text} alcan??ar e pegar o brinquedo. Oferecer objetos '
                'macios, leves e seguros.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Manter aten????o ao tom de voz e representa????o dos '
                'sentidos da fala com express??es faciais e gestos ao interagir '
                'com ${store.controllerKidName.text}. Isso ajudar?? ${store.controllerKidName.text} entender melhor.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV12TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Ap??s o banho, fa??a uma massagem com ??leo espec??fico '
                'para crian??a, provocar?? o relaxamento e est??mulo sensorial. ',
          ),textCTRST(stg1: '\u2055 Ap??s o banho ?? um momento para relaxar, '
              'deixe o ambiente silencioso, reduz a luz natural do ambiente.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Hora do relaxamento. Cante m??sicas calmas e agrad??veis'
                ' que ajudem no relaxamento, principalmente na hora do soninho. ',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Hora da brincadeira. Nos momentos de descontra????o '
                'abra??ar ${store.controllerKidName.text} e brincar de folia com risadas e cocegas, pega o '
                'pezinho (canta o sapo n??o lava o p??). O pezinho ?? uma ??rea '
                'ideal para estimular a parte sensorial, al??m da cocega pode '
                'massagear, passar texturas diferentes (algod??o, pincel, escova '
                'macia de cabelo). Lembre, a pele de ${store.controllerKidName.text} ?? muito delicada.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV12TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} da ',
            stg2: 'posi????o lateral para a posi????o de barriguinha para baixo',
            stg3: ', sempre com o acompanhamento. Incentive-o(a) a fazer o '
                'movimento sozinho com o brinquedo favorito do ${store.controllerKidName.text}.',
          ),textCTRST(stg1: '\u2055 Acompanhe o peso de ${store.controllerKidName.text}, compare??a em '
              'todas as consultas regulares.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Neste momento, fa??a sons, estimule ${store.controllerKidName.text} chacoalhando '
                'o brinquedo dele, mande beijos, tudo para incentiva-lo(a) a se'
                ' movimentar sozinho.',
          ),textCTRST(stg1: '\u2055 Esse per??odo ${store.controllerKidName.text} leva os objetos na boca,'
              ' assim vamos lavar e cuidar da higiene dos objetos que estiverem'
              ' em contato com ${store.controllerKidName.text}. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Vamos sentar de frente com ${store.controllerKidName.text}, segure nas m??ozinhas'
                ' e deixa ${store.controllerKidName.text} experimentar a posi????o sentada sem apoio da '
                'lateral, somente suas m??os apoiando. Vamos nos divertir e '
                'cantar uma m??sica de sua prefer??ncia. Essa tarefa dever?? ser '
                'executada em per??odo curto, mas aumentando gradativamente '
                'conforme a conquista e independ??ncia para o movimento.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV12TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Agora vamos ver a ',
            stg2: 'movimenta????o em todas as posi????es corporais',
            stg3: ', voc?? poder?? estimular de forma volunt??ria. Registre os '
                'movimentos conquistados de barriguinha para baixo, para cima e'
                ' sentado',
          ),textCTRST(stg1: '\u2055 O padr??o de sono ?? diferente para cada '
              'crian??a. ?? importante conhecer e respeitar as caracter??sticas '
              'de ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais'
                ' com sons alegres, ${store.controllerKidName.text} se sentir?? o afeto e import??ncia na '
                'aten????o recebida. As conquistas s??o vit??rias!',
          ),textCTRST(stg1: '\u2055 Cada crian??a desenvolve um ritmo para o '
              'sono, respeite o hor??rio do sono e mantenha o ambiente tranquilo.'),
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
