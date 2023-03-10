import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';
class Tarefa27Page extends StatefulWidget {
  final String title;
  const Tarefa27Page({Key? key, this.title = 'Tarefa27Page'}) : super(key: key);
  @override
  Tarefa27PageState createState() => Tarefa27PageState();
}

class Tarefa27PageState extends State<Tarefa27Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV27").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV27';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV27';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 27"),
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
                                "SIGA A 27?? TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * .95,
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
                                              'images/fig79-4.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig79-5.jpeg',
                                          ),
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
                                        )
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
                                      child: regText(
                                          '\u25CF Movimento',
                                          'Brincadeiras que estimulem sentar,'
                                              ' ajoelhar e colocar-se em p?? fornecem est??mulos sensoriais que '
                                              's??o primordiais para o bom desenvolvimento. Alguns movimentos s??o'
                                              ' de prefer??ncia da crian??a, mas ?? importante estimular e vencer '
                                              'movimentos de baixa prefer??ncia e novos.'),
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
                                      MediaQuery.of(context).size.height * 1.05,
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
                                          20.0, 10.0, 20.0, 20.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          '- Converse, cante e mostre os diferentes'
                                              ' sons para ${store.controllerKidName.text}.'),
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
                                                          builder: ((context) =>
                                                              const TaskTwentSe())));
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

class TaskTwentSe extends StatefulWidget {
  const TaskTwentSe({super.key});

  @override
  State<TaskTwentSe> createState() => _TaskTwentSeState();
}

class _TaskTwentSeState extends State<TaskTwentSe> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 27"),
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
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 10.0, 0.0, 20.0),
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
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Menos colo, mais ch??o. Deixe ${store.controllerKidName.text} brincar no ch??o, dentro dos limites que j?? est?? acostumado (a) e seguro, deixe explorar os brinquedos favoritos. Estimule a independ??ncia.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Evite expor ${store.controllerKidName.text} a objetos que possam gerar curiosidade e que possam machucar. Uma gaveta aberta sem supervis??o pode ser perigosa. ${store.controllerKidName.text} pode come??ar a se movimentar pela casa, seja arrastando ou engatinhando. Coloque tampas pl??sticas nas tomadas que n??o estiverem em uso.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Aproveite para incentiv??-lo a imitar os sons dos brinquedos dispon??veis, a apontar e a pedir ???me d????? ou ???d????? demonstrando os que mais agrade. Ensina ${store.controllerKidName.text} a fazer ???tchau??? para um brinquedo e logo ofere??a o brinquedo novamente, pois vai entender que desaparecer?? e depois retornar??.',
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Escolha um exerc??cio que associa movimentos das tarefas anteriores para repetir o estimulo neste momento. Observe se a execu????o do movimento de ${store.controllerKidName.text} est?? melhor, mais r??pido, com maior independ??ncia e dom??nio.',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV27TASK1'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos incentivar ${store.controllerKidName.text} a falar! Fa??a sons como ???papap????? para ensinar a palavra papai e ???m??m??m????? para a palavra mam??e. Fa??a sempre primeiro e deixe-o observar voc?? fixamente. Se tiver animais em casa incentive a reconhecer pelo som de ???au-au??? para cachorro e ???miau??? para gatos. Ap??s qualquer emiss??o de som de ${store.controllerKidName.text} festeje sua tentativa! Fa??a esse exerc??cio sempre que poss??vel.'),
                      textCTRST(
                          stg1:
                              '\u2055 ?? importante manter uma rotina de atividades de ${store.controllerKidName.text}, mantenha os hor??rios de sono. ${store.controllerKidName.text} expressa cada vez mais os sentimentos com o meio ambiente (sorri, chora, grita, compreende os sons que ouve). Assim, voc?? poder?? interagir com ${store.controllerKidName.text}, nas express??es de alegria com um sorriso e nas express??es de irritabilidade com o seu aconchego para acalmar.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Coloque uma m??sica infantil e estimule ${store.controllerKidName.text} a dan??ar, se estiver sentado fa??a movimento mexendo o tronco do corpo e a cabe??a de um lado para o outro, levantando as m??os ou batendo palmas, se estiver ',
                          stg2: 'em p?? com apoio',
                          stg3:
                              ' do sof?? estimule a fazer o movimento de dobrar os joelhos e esticar. ?? um ??timo exerc??cio!'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV27TASK2'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos ensinar ${store.controllerKidName.text} o ritmo da m??sica. Coloque para tocar uma musica infantil que seja a preferida de ${store.controllerKidName.text} e bata suas m??os no mesmo ritmo que a m??sica. Ensine ${store.controllerKidName.text} a bater as m??os no mesmo ritmo que voc??.'),
                      textCTRST(
                          stg1:
                              '\u2055 Aproveita o hor??rio do banho para deixar ${store.controllerKidName.text} relaxado usando uma forma divertida, que ?? o contato com a ??gua e com o pr??prio corpo. O banho pode representar o momento para acalmar e logo ap??s a hora do sono. Cuidado com produtos inapropriados para a crian??a, perfumes e materiais para adultos podem provocar rea????es al??rgicas.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Um dos melhores jeitos de desenvolver a coordena????o motora ?? ensinar ritmo a ${store.controllerKidName.text}, mesmo que no inicio ele(a) fa??a a tarefa de maneira desengon??ada.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Cante uma can????o para ${store.controllerKidName.text}! Uma m??sica alegre, com um ritmo que incentive a bater palmas. Fa??a sempre primeiro e deixe-o observar voc??.  Fa??a isso sempre estimulando ${store.controllerKidName.text} a fixar a aten????o em voc??.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV27TASK3'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Durante o banho de sol, deixe ${store.controllerKidName.text} em posi????o ',
                          stg2: "sentado (a)",
                          stg3:
                              " sobre uma superf??cie segura. Deixe ${store.controllerKidName.text} livre pra explorar o ambiente, mas esteja sempre por perto para proteger de ocorr??ncias indesejadas."),
                      textCTRST(
                          stg1:
                              '\u2055 Estamos finalizando mais uma etapa, parab??ns! O seu papel com ${store.controllerKidName.text} tem sido fundamental para obter o desenvolvimento e crescimento. Vamos passar para a outra etapa de 10 a 12 meses, chegamos na ??ltima tarefa desta idade de 6 a 9 meses. Vamos preparar para chegar e comemorar o primeiro ano de vida. PARAB??NS!!!'
                              '\n\u2055 Registre com fotos e filmagem de ${store.controllerKidName.text} e coloque na galeria de fotos do aplicativo Universo Prematuro. Queremos compartilhar essa alegria da conquista.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Tire alguns minutos desse momento e aproveite para praticar a linguagem perguntando ???Cad?? ${store.controllerKidName.text}???, Cad?? mam??e???, ???Cad?? o au-au??? e assim por diante. Espere ${store.controllerKidName.text} responder, n??o responda por ${store.controllerKidName.text}. Estimule a express??o de ${store.controllerKidName.text}.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: const TextSpan(
                          text:
                              'Vamos estimular os movimentos associativos: de ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'barriguinha para baixo',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ', gira o tronco para sentar; '),
                            TextSpan(
                                text: 'sentado (a)',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    'gira o tronco para engatinhar; engatinhando apoia-se para levantar e ficar de '),
                            TextSpan(
                                text: 'p?? com apoio',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    '. Proporciona o espa??o para ocorrer os movimentos!'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV27TASK4'),

                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 10.0, top: 30.0),
                        child: Text(
                          "Estamos indo muito bem com a estimula????o! Parab??ns finalizamos mais uma etapa! Vamos iniciar um novo ciclo!",
                          style: TextStyle(
                              color: Color.fromARGB(255, 193, 61, 39),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
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
