import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';

class Tarefa30Page extends StatefulWidget {
  final String title;
  const Tarefa30Page({Key? key, this.title = 'Tarefa30Page'}) : super(key: key);
  @override
  Tarefa30PageState createState() => Tarefa30PageState();
}

class Tarefa30PageState extends State<Tarefa30Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV30").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV30';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV30';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 30"),
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
                                "SIGA A 30?? TAREFA EM CASA",
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
                                          viewportFraction: 0.6,
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
                                              'images/fig1012-7.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig1012-4.jpeg',
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
                                          'A hora do est??mulo deve ser divertida e agrad??vel. Organize essa atividade para os momentos que a rotina dos afazeres estiver mais tranquila. Assim, voc?? ir?? estimular ${store.controllerKidName.text} de maneira divertida, potencializando o aprendizado e demostrando maior seguran??a.'),
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
                                      MediaQuery.of(context).size.height * 1.32,
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
                                      child: regText('\u25CF Som',
                                          'O sorriso, a gargalhada e o contato visual fazem parte da linguagem da crian??a. Estimule sempre aproveitando os momentos da rotina di??ria da casa.'),
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
                                          'Neste momento do desenvolvimento, os objetos menores podem ser alcan??ados e manuseados pela crian??a. N??o deixe pe??as pequenas nos locais de f??cil acesso (ch??o, ber??o)e, muito cuidado com rem??dios, principalmente quando acidentalmente caem no ch??o. Objetos pontiagudos tamb??m geram risco, os materiais de limpeza devem ser manuseados longe das crian??as e armazenados em ambientes seguros.'),
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
                                                      builder: ((context) => const TaskThirteen())
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
class TaskThirteen extends StatefulWidget {
  const TaskThirteen({super.key});

  @override
  State<TaskThirteen> createState() => _TaskThirteenState();
}

class _TaskThirteenState extends State<TaskThirteen> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 30"),
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
              stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} a engatinhar! Fique em uma dist??ncia de 1 metro de ${store.controllerKidName.text}, deixe ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para baixo',
            stg3: ',chame pelo seu nome e mostra um brinquedo. Fa??a diversos barulhos, com diferentes tons de voz e deixe ${store.controllerKidName.text} se esfor??ar para alcan??ar, arrastando ou engatinhando. O importante ?? o deslocamento nesta posi????o. Sempre comemore quando ${store.controllerKidName.text} conseguir responder ao est??mulo.'
          ),textCTRST(stg1: '\u2055 Cuidado com tomadas e fios pela casa. Nessa idade, ${store.controllerKidName.text} gosta de explorar o ambiente, forne??a sempre um ambiente seguro e estimulante para brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Mantenha um di??logo agrad??vel e divertido durante as brincadeiras para construir uma conex??o significativa entre voc??s. Os momentos das brincadeiras devem ser momentos para voc?? tamb??m relaxar e desligar dos afazeres di??rios.',
          ),textCTRST(stg1: '\u2055 Mantenha m??veis, ch??o, objetos de acesso de ${store.controllerKidName.text} higienizados, pois ?? uma fase que ${store.controllerKidName.text} explora muito.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Coloque ${store.controllerKidName.text} na posi????o ',
            stg2: 'sentado(a)',
            stg3: ' e provoca um deslocamento do seu tronco hora para a direita e depois de alguns minutinhos um deslocamento para a esquerda. O movimento parece que estar?? empurrando para o lado, de modo que ${store.controllerKidName.text} mantenha-se sentado(a), assim poderemos treinar o equil??brio e o apoio na lateral com a m??ozinha.\nImportante: observe a rea????o de ${store.controllerKidName.text} e o movimento dever?? ser bem devagar, somente para provocar um deslocamento e uma rea????o de controle de equil??brio do corpo.'
          ),textCTRST(stg1: '\u2055 Fique atenta (o) a caderneta de vacina????o. ?? importante seguir as datas para garantir o desenvolvimento infantil adequadode ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nessa tarefa, fa??a sons de trenzinho, ensine ${store.controllerKidName.text} a fazer tamb??m. Nessa fase, ${store.controllerKidName.text} aprender?? a imitar algumas a????es e sons, por isso aproveite a brincadeira aumentando seu elo afetivo e intera????o.',
          ),textCTRST(stg1: '\u2055 Siga as orienta????es de profissionais capacitados (nutricionista, pediatra) sobre introduzir novos alimentos para ${store.controllerKidName.text}.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Crian??as nessa idade adoram conversar e ouvir conversas. Conte uma hist??ria para ${store.controllerKidName.text}, com muitos sons e muitos sorrisos. Esse momento tamb??m deve ser para voc?? relaxar, deixando de lado a rotina di??ria.',
          ),textCTRST(stg1: '\u2055 Aten????o com os objetos muito pequenos, proteja ${store.controllerKidName.text}, n??o ofere??a objetos que geram riscos. As crian??as colocam tudo na boca, objetos que soltam pequenas pe??as tamb??m s??o de grande risco. N??o deixa ${store.controllerKidName.text} em locais altos que n??o ofere??a seguran??a. Transporte sempre ${store.controllerKidName.text} na cadeirinha de seguran??a no carro, devidamente instalada. Proteja!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Em determinados momentos da hist??ria fa??a c??cegas em ${store.controllerKidName.text}, estimulando os m??sculos da face (pelo sorriso) e do tronco (pela for??a) que beb?? ir?? fazer em resposta as c??cegas.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nesta etapa, os movimentos efetuados de ',
            stg2: 'barriguinha para baixo',
            stg3: ' s??o muito importantes para as conquistas das pr??ximas etapas, como o andar. Ent??o, deixe ${store.controllerKidName.text} em diferentes hor??rios do dia brincando de barriga para baixo, voc?? presenciar?? a grande evolu????o e as novas conquistas no desenvolvimento. '
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 As crian??as pouco expostas nesta posi????o de ',
              stg2: 'barriguinha para baixo',
              stg3: ', geralmente, se expressam com desconforto fazendo caretinha e chorinho. Frente a essa situa????o, precisamos proporcionar essa experi??ncia na posi????o para ${store.controllerKidName.text} acostumar. Em cada per??odo do dia voc?? coloca um pouquinho ${store.controllerKidName.text} de barriga para baixo e brinca, aos poucos acostumar??!'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos estimular os movimentos laterais. Com ${store.controllerKidName.text} na posi????o ',
            stg2: 'sentado(a)',
            stg3: ', se posicione atr??s de ${store.controllerKidName.text} e interaja com ele (a), falando ???oooii???, ???cad?? ${store.controllerKidName.text}????, fazendo um barulho com o brinquedo/objeto.'
          ),textCTRST(stg1: '\u2055 Os rituais de sono de ${store.controllerKidName.text} s??o importantes. Agora, ${store.controllerKidName.text} come??a a dormir a noite inteira e ?? poss??vel come??ar a retirar as sonecas diurnas. Pe??a ajuda a sua (seu) pediatra para fazer a transi????o.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 ${store.controllerKidName.text} ir?? procurar o som, virando-se o corpo para encontr??-lo e quando acontecer o movimento, sorria e com muita festa por suas tentativas, sempre com o contato visual face a face para estimular o sorriso de ${store.controllerKidName.text} tamb??m.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Agora vamos ver a ',
            stg2: 'movimenta????o em todas as posi????es corporais',
            stg3: ', voc?? poder?? estimular de forma volunt??ria. Registre! Como os movimentos de ${store.controllerKidName.text} est??o de barriga para baixo, barriga para cima, rolar e sentado. Deixe no ??lbum do aplicativo os registros. Vamos comemorar juntos essas conquistas!'
          ),textCTRST(stg1: '\u2055 Cuidado com portas de arm??rios que guardam produtos de limpeza. Evite acidentes dom??sticos.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais. O sorriso e a gargalhada j?? fazem parte da linguagem da crian??a!',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Um movimento novo, coloque ${store.controllerKidName.text} em p?? com apoio (sof??, cadeira) pegue a m??o de ${store.controllerKidName.text} e estimule a sentar no ch??o, vamos treinar o agachamento.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK5'),

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
