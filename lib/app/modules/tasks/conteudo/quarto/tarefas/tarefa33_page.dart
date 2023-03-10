import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa33Page extends StatefulWidget {
  final String title;
  const Tarefa33Page({Key? key, this.title = 'Tarefa33Page'}) : super(key: key);
  @override
  Tarefa33PageState createState() => Tarefa33PageState();
}

class Tarefa33PageState extends State<Tarefa33Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV33").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV33';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV33';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 33"),
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
                                "SIGA A 33?? TAREFA EM CASA",
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
                                              'images/fig1012-1.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig1012-8.jpeg',
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
                                          '?? importante para ${store.controllerKidName.text} todos os est??mulos que refor??a os movimentos aprendidos. No inicio ?? dif??cil, mas a cada semana cumprindo as tarefas esses movimentos ir??o se tornar mais f??ceis e de melhor dom??nio. Comece a reduzir a sua ajuda para que ${store.controllerKidName.text}efetue os movimentos e deixe que ${store.controllerKidName.text} adquira for??a muscular e equil??brio, pois ?? primordial para o andar de forma independente.'),
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
                                      MediaQuery.of(context).size.height * 1.26,
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
                                          20.0, 10.0, 20.0, 45.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon91.png')),
                                      ),
                                      child: regText('\u25CF Som',
                                          'Sempre que for ensinar uma palavra para ${store.controllerKidName.text}, fa??a de maneira devagar os movimentos da boca, d?? o sentido da palavra mostrando o objeto. Assim, ${store.controllerKidName.text} ir?? copiar seus gestos e associar a palavra com a situa????o do ambiente.'),
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
                                      child: regText('\u25CF Cuidado!',
                                          'A crian??a nessa idade quer explorar e ?? muito curiosa. Tenha cuidado com objetos pr??ximos a ele(a), degraus e escadarias. Tamb??m evite deixar ${store.controllerKidName.text} explorar estantes ou mesas que possam balan??ar e que um objeto possa cair na crian??a. Evite acidentes, proteja sua crian??a!'),
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
                                                      builder: ((context) => const TaskThirteenTh())
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
class TaskThirteenTh extends StatefulWidget {
  const TaskThirteenTh({super.key});

  @override
  State<TaskThirteenTh> createState() => _TaskThirteenThState();
}

class _TaskThirteenThState extends State<TaskThirteenTh> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 33"),
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
                height: MediaQuery.of(context).size.height * 6.8,
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
              stg1: '\u2055 Frases curtas, o tom de voz, gestos e as express??es faciais suaves e bem articuladas ajudam ${store.controllerKidName.text} perceber sensa????es e sentidos da fala do adulto. Fa??a esses exerc??cios periodicamente. Vamos construindo pequenas frases de atividade do dia a dia e repetindo para ${store.controllerKidName.text}, ???Quem vai tomar banho agora????, ???Cad?? a vov??, o titio ...???, ???Agora ?? hora de dormir???...',
          ),textCTRST(stg1: '\u2055 Certifique-se de que o ambiente que voc?? deixa ${store.controllerKidName.text} ?? livre de objetos que possam colocar em risco a seguran??a e sa??de da crian??a.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Procure fazer as atividades e tarefas com ${store.controllerKidName.text} nos mesmos hor??rios do dia, a rotina di??ria estabelecida ?? mais saud??vel para ${store.controllerKidName.text} (ficar?? mais calmo, concentrado e com maior intera????o no ambiente). Organize o tempo, voc?? tamb??m precisa para seus cuidados!',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer o gesto de tchau. Primeiro, voc?? ir?? fazer o movimento e depois pe??a para ${store.controllerKidName.text} fazer tamb??m. Caso ${store.controllerKidName.text} tenha dificuldades em levantar os bra??os ou a m??o, mostre como fazer, pegando no bracinho dele(a). A repeti????o do estimulo ?? importante para o aprendizado e memoriza????o.',
          ),textCTRST(stg1: '\u2055 Ao conversar com outras m??es/pais/cuidadores de outra crian??a, tenha cuidado ao anunciar uma nova conquista de ${store.controllerKidName.text}. Essa informa????o poder?? deixar o outro cuidador preocupado. Cada crian??a tem um tempo para o desenvolvimento.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Voc?? dever?? sentar no ch??o com ${store.controllerKidName.text} na sua frente e, com uma das suas m??os, voc?? mostrar?? o brinquedo e logo ap??s esconde essa m??o atr??s do seu corpo, vamos ver a rea????o de ${store.controllerKidName.text}. A observa????o poder?? ser predominante, ent??o voc?? mostra o brinquedo novamente e esconde, vamos estimulando ${store.controllerKidName.text} para o deslocamento em busca do objeto.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais com parab??ns, cantando m??sicas infantis e com brincadeiras sentir?? a import??ncia das suas conquistas e seu apoio em casa fase.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} na posi????o ',
            stg2: 'barriguinha pra cima',
            stg3: ', ofere??a seus dedos para ele(a) segurar e incentive para que ${store.controllerKidName.text} passe para a posi????o sentado(a).'
          ),textCTRST(stg1: '\u2055 Ofere??a brinquedos pr??prios para a idade de ${store.controllerKidName.text}. Busque ajuda especializada para escolher os melhores brinquedos ou entre em contato conosco.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 ?? importante estimular a independ??ncia. Por isso, nessa tarefa, tente oferecer o menor suporte poss??vel para que ${store.controllerKidName.text} consiga sentar sozinho(a).',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore sempre, cantando m??sicas infantis e com brincadeiras sentir?? a import??ncia das suas conquistas e seu apoio em casa fase.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer caretas. Fa??a voc?? movimentos de abrir bem a boca, falando ???aaaa???; mexer e enrugar o nariz, fazendo ???bichinhos??? ???caminh??ozinho???. Estimule ${store.controllerKidName.text}, fazendo com que ocorra a imita????o.',
          ),textCTRST(stg1: '\u2055 ?? preciso cuidar do ambiente para proteger ${store.controllerKidName.text} de ocorr??ncias al??rgicas, o ambiente deve ser limpo diariamente, e evitar cortinas, tapetes, almofadas. A casa dever?? manter arejada com janelas abertas e cuidado com mofo e umidade nas paredes, pois podem desencadear situa????o de adoecimento de ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Durante o exerc??cio, ofere??a um brinquedo para ${store.controllerKidName.text} segurar e o estimule a soltar, (quando soltar) diga ???Ahhhh, caiu!???. Recomece oferecendo e deixe ${store.controllerKidName.text} pegar, mas antes pergunte ???Voc?? quer????e v?? repetindo como uma brincadeira, dialogando sempre, face a face.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 ${store.controllerKidName.text} deitado de ',
            stg2: 'barriguinha para baixo',
            stg3: ', coloque um brinquedo ou objeto de preferencia um pouco distante e na lateral do corpo de ${store.controllerKidName.text}, mexa no brinquedo e deixe-o no mesmo lugar para chamar a aten????o de ${store.controllerKidName.text}. Vamos somente observar, fique um pouco distante de ${store.controllerKidName.text} para que n??o perceba a sua presen??a. Deixa ${store.controllerKidName.text} em seu tempo organizar o seu deslocamento corporal com movimentos em busca do brinquedo. Os movimentos dever??o ser livres sem interfer??ncia do adulto. Se n??o conseguir alcan??ar o brinquedo neste momento, vai repetindo a brincadeira, uma hora que menos esperar vai acontecer!'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Se o ambiente tiver um degrau de escada e com a sua supervis??o direta, coloque ${store.controllerKidName.text} no inicio do degrau e na parte de cima deixe um brinquedo, estimule ${store.controllerKidName.text} a ficar de joelho e m??os na parte superior do degrau, a partir desta postura, estimule dobrar um joelho e subir para alcan??ar o brinquedo.',
          ),textCTRST(stg1: '\u2055 Sempre esterilize qualquer utens??lio de cozinha que ${store.controllerKidName.text} use para se alimentar ou que voc?? use para preparar e colocar a comida.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Depois do movimento acima ser executado por ${store.controllerKidName.text}, estimule com sua ajuda a descer o degrau de bumbum.',
          ),textCTRST(stg1: '\u2055 Cuidado ao levar ${store.controllerKidName.text} para ambientes abertos. Cuide para que os olhos de ${store.controllerKidName.text} estejam protegidos do sol.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Momento de incorporar na rotina algumas s??labas na conversa como, por exemplo: ???d?? aqui para mam??e???. Assim, v?? estimulando a pr??tica do ???d??-d??-d?????, ???m??-m??-m????? e/ou ???p??-p??-p????? e mesmo o ???me d?????, ???cad?????, t??...',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK5')

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
