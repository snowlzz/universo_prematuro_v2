import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';



class Tarefa23Page extends StatefulWidget {
  final String title;
  const Tarefa23Page({Key? key, this.title = 'Tarefa23Page'}) : super(key: key);
  @override
  Tarefa23PageState createState() => Tarefa23PageState();
}

class Tarefa23PageState extends State<Tarefa23Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV23").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV23';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV23';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 23"),
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
                                "SIGA A 23?? TAREFA EM CASA",
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
                                            'images/fig79-13.jpeg',
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
                                      child: regText(
                                          '\u25CF Movimento',
                                          'A crian??a deve ser estimulada na '
                                              'posi????o barriguinha para baixo, pois essa posi????o neste momento '
                                              'possibilita maior movimenta????o, equil??brio e treinamento para '
                                              'alcan??ar outros movimentos mais elaborados no tempo certo. Ent??o'
                                              ', j?? estamos trabalhando os est??mulos com os movimentos '
                                              'associados. Siga todas as tarefas!'),
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
                                      child: regText(
                                          '\u25CF Som',
                                          'Can????es infantis s??o ??timas para o '
                                              'desenvolvimento. O ritmo e a rima tornam a memoriza????o e a '
                                              'pron??ncia de palavras ainda mais f??ceis. Al??m disso, o processo '
                                              'pelo qual a crian??a vai entendendo a m??sica e que tamb??m ?? capaz '
                                              'de produzi-la, ?? uma importante ferramenta para seu '
                                              'desenvolvimento cerebral.'),
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
                                          'Aten????o com os objetos muito '
                                              'pequenos, proteja ${store.controllerKidName.text}, n??o ofere??a objetos que geram riscos. As'
                                              ' crian??as colocam tudo na boca, objetos que podem soltar pe??as '
                                              'tamb??m s??o de risco. N??o deixe ${store.controllerKidName.text} em locais altos que n??o '
                                              'ofere??a seguran??a. Transporta sempre ${store.controllerKidName.text} na cadeirinha de '
                                              'seguran??a no carro, devidamente colocada. Proteja!'),
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
                                                      builder: ((context) => const TaskTwentThree())
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
class TaskTwentThree extends StatefulWidget {
  const TaskTwentThree({super.key});

  @override
  State<TaskTwentThree> createState() => _TaskTwentThreeState();
}

class _TaskTwentThreeState extends State<TaskTwentThree> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 23"),
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

                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos nos divertir com a brincadeira! Com ${store.controllerKidName.text} na ',
              stg2: "posi????o sentado (a)",
              stg3: ", fa??a voc??, primeiramente, a brincadeira o de se esconder "
                  "atr??s de um paninho estimulando ${store.controllerKidName.text} a puxar para te encontrar"
                  ". Depois ensine ${store.controllerKidName.text} a fazer a mesma brincadeira, do mesmo modo"
                  " que voc?? ensinou e neste momento voc?? ir?? puxar o pano,"
                  " expressando surpresa."
          ),textCTRST(stg1: '\u2055 Fique atenta! N??o falte das consultas de rotina de ${store.controllerKidName.text}, siga todas as orienta????es para o bom desenvolvimento e crescimento, observe as indica????es de cuidados do ambiente, higiene, limpeza da boca e dentinhos que ir??o surgindo. Acompanhe as informa????es tamb??m na carteirinha da crian??a.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Qualquer tentativa ?? v??lida, ?? come??ando que ir?? aprimorar. '
                  'Fa??a muito elogios expressando sorriso e demonstrando alegria '
                  'por ${store.controllerKidName.text} cumprir a tarefa ou mesmo pela tentativa e esfor??o.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Para todas as tarefas ?? importante a repeti????o. Voc??'
                  ' dever?? escolher uma tarefa anterior, do bloco 1 ou 2 e repetir.'
                  ' Observe como ${store.controllerKidName.text} executar??, observe o desenvolvimento alcan??ado! '
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Aumentando a velocidade do movimento! Vamos brincar'
                  ' de engatinhar e aumentar a velocidade do deslocamento, ofere??a'
                  ' o est??mulo batendo as m??os e falando ???vamos, vamos??? ofere??a'
                  ' um brinquedo, aproximando da linha de chegada ${store.controllerKidName.text} dever?? sentar'
                  ' e explorar o brinquedo. Levanta e muda de lugar para repetir'
                  ' a brincadeira. Se ${store.controllerKidName.text} executar o movimento arrastando,'
                  ' tamb??m ?? valido.'
          ),textCTRST(stg1: '\u2055 Observe a rea????o de ${store.controllerKidName.text} com os barulhos dos brinquedos e da pr??pria casa. ${store.controllerKidName.text} deve reagir com os barulhos de bater a porta, vozes dos familiares e brinquedos que emitem som, alguma rea????o deve ser apresentada por ${store.controllerKidName.text} com os ru??dos, mesmo que ${store.controllerKidName.text} esteja virado (a) para outro lado.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 ?? momento de conversar com ${store.controllerKidName.text}! Fa??a barulhos com a'
                  ' boca e incentive ${store.controllerKidName.text} a repetir (???aaaa???, ???angu???, ???oi???). Fa??a'
                  ' os barulhos com movimentos bem marcados da boca, sempre ensine'
                  ' ${store.controllerKidName.text} como fazer os movimentos da boca para que ele (a) o imite.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Fa??a sempre primeiro e deixe-o observar voc?? fixamente.'
                  ' Ap??s qualquer emiss??o de som de ${store.controllerKidName.text} festeje sua tentativa!'
                  ' Fa??a esse exerc??cio sempre que poss??vel.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} na ',
              stg2: "yposi????o sentado (a)",
              stg3: " e com o brinquedo favorito dele (a), brinque de passar o "
                  "brinquedo de uma m??o para outra. Essa tarefa ir?? exercitar a"
                  " lateralidade. A cada momento de tr??s repeti????o troca o brinquedo"
                  " e formato."
          ),textCTRST(stg1: '\u2055 Evite o uso de aparelhos eletr??nicos para distrair ${store.controllerKidName.text}. Prefira brinquedos do que jogos virtuais. ?? recomendado que o contato com equipamentos digitais ocorra ap??s dois anos de idade garantindo o melhor desenvolvimento.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 ?? importante ensinar ${store.controllerKidName.text} a compartilhar tamb??m. Em'
                  ' alguns momentos da brincadeira, pe??a o brinquedo e fa??a elogios'
                  ' ?? ${store.controllerKidName.text} quando o brinquedo lhe for entregue.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} na ',
              stg2: "posi????o sentado (a)",
              stg3: ", d?? dois brinquedos a ele (a) e ensine a bat??-los um no outro."
                  " Isso ir?? estimular a for??a nas m??os. Durante a atividade deve"
                  " oferecer diferentes brinquedos ou objetos."
          ),textCTRST(stg1: '\u2055 ?? importante para ${store.controllerKidName.text} o vinculo com pessoas queridas da fam??lia, assim poder?? construir uma base s??lida entre as rela????es sociais. Vamos estimular as rela????es com alegria, tranquilidade, sorrisos, carinho e brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Fale com alegria e d?? uma gargalhada, para que perceba'
                  ' ser algo importante e divertido est?? acontecendo. Prenda a '
                  'aten????o de ${store.controllerKidName.text} para a brincadeira, sempre sorrindo, '
                  'alternando tons de voz.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos deixar ${store.controllerKidName.text} com movimentos livres! Explorar todas '
                  'as posi????es corporais e deixar ele brincar com seus pezinhos e '
                  'm??ozinhas e com os brinquedos que estiverem ao seu arredor. A '
                  'dist??ncia voc?? verifica como ${store.controllerKidName.text} ir?? se comportar nesta situa????o.'
                  ' Momentos de intera????o do ${store.controllerKidName.text} sozinho ?? importante para a sua forma????o.'
          ),textCTRST(stg1: '\u2055 Observe as rea????es de ${store.controllerKidName.text} na parte visual. ${store.controllerKidName.text} dever?? responder com o olhar direcionado ao brinquedo e nas pessoas, a fixa????o do olhar dever?? acontecer com os objetos de interesse mantendo uma dist??ncia entre o objeto e o rosto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Ap??s um tempo sozinho, em torno de vinte minutos, voc?? '
                  'aproxima e aproveite para brincar e cantar para o ${store.controllerKidName.text}.  Use a '
                  'imagina????o e criatividade. ${store.controllerKidName.text} perceber?? que alguns momentos '
                  'sozinhos se passaram e logo chegou a pessoa querida. Depois ${store.controllerKidName.text}'
                  ' tolera per??odos um pouco maior.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK5'),
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
