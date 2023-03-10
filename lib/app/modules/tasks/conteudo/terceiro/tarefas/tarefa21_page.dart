import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa21Page extends StatefulWidget {
  final String title;
  const Tarefa21Page({Key? key, this.title = 'Tarefa21Page'}) : super(key: key);
  @override
  Tarefa21PageState createState() => Tarefa21PageState();
}

class Tarefa21PageState extends State<Tarefa21Page> {
  final EditStore store = Modular.get();
  final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV21").then((l) {
      if (l.length == 0) {
        for (int i = 1; i < 6; i++) {
          Task t = Task();
          t.user = auth.currentUser!.uid;
          t.task = 'TASK$i';
          t.group = 'DEV21';
          t.status = 'I';
          tStore.task = 'TASK$i';
          tStore.group = 'DEV21';
          tStore.status = 'I';
          t.date = DateTime.now().toString();

          // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
        }
      }
    });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 21"),
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
                                "SIGA A 21?? TAREFA EM CASA",
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
                                              'images/fig79-1.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig79-7.jpeg',
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
                                          'A hora do est??mulo deve ser '
                                              'divertida e agrad??vel. Organize essa atividade para os momentos '
                                              'que a rotina dos afazeres estiver mais tranquila. Assim, voc?? '
                                              'ir?? estimular ${store.controllerKidName.text} de maneira divertida, potencializando o '
                                              'aprendizado e demostrando maior seguran??a.'),
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
                                      MediaQuery.of(context).size.height * 1.55,
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
                                                'images/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          'O sorriso, a gargalhada e o contato '
                                              'visual fazem parte da linguagem da crian??a. Estimule sempre '
                                              'aproveitando os momentos da rotina di??ria da casa.'),
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
                                          'Neste momento do desenvolvimento os'
                                              ' objetos menores podem ser alcan??ados e manuseados pela crian??a. '
                                              'N??o deixe pe??as pequenas nos locais de acesso (ch??o, ber??o), '
                                              'muito cuidado com rem??dios, principalmente quando acidentalmente '
                                              'caem no ch??o, objetos pontiagudos tamb??m gera risco, os materiais'
                                              ' de limpeza devem ser manuseados longe das crian??as e armazenados'
                                              ' em ambientes seguros.'),
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
                                                              const TaskTwentO())));
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

class TaskTwentO extends StatefulWidget {
  const TaskTwentO({super.key});

  @override
  State<TaskTwentO> createState() => _TaskTwentOState();
}

class _TaskTwentOState extends State<TaskTwentO> {
  final EditStore store = Modular.get();
  final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 21"),
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
                              '\u2055 Vamos estimular ${store.controllerKidName.text} a engatinhar! Fique em uma '
                              'dist??ncia de 1 metro de ${store.controllerKidName.text}, deixe ${store.controllerKidName.text} ',
                          stg2: "de barriguinha para baixo",
                          stg3:
                              " e chame pelo seu nome e mostra um brinquedo. Fa??a diversos"
                              " barulhos, com diferentes tons de voz e deixe ${store.controllerKidName.text} se esfor??ar"
                              " para alcan??ar, arrastando ou engatinhando o importante ?? o "
                              "deslocamento nesta posi????o, sempre comemore quando ${store.controllerKidName.text} conseguir"
                              " responder ao est??mulo."),
                      textCTRST(
                          stg1:
                              '\u2055 Essa fase de desenvolvimento, ${store.controllerKidName.text} fica muito tempo no ch??o para brincar. Limpe todo o ambiente, principalmente nos cantos das paredes, embaixo do sof?? e locais que os brinquedos fiquem guardados, para evitar algum contratempo com bichos indesej??veis.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Mantenha um di??logo agrad??vel e divertido durante as'
                              ' brincadeiras para construir uma conex??o significativa entre '
                              'voc??s. Os momentos das brincadeiras devem ser momentos para '
                              'voc?? tamb??m relaxar e desligar dos afazeres di??rios.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: 'DEV21TASK1'),
                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Coloque ${store.controllerKidName.text} na ',
                          stg2: "posi????o sentado (a)",
                          stg3:
                              " e provoca um deslocamento do seu tronco hora para a direita"
                              " e depois de alguns minutinhos um deslocamento para a esquerda."),
                      textCTRST(
                          stg1:
                              '\u2055 Cuidar da higiene bucal de ${store.controllerKidName.text} ?? extremamente importante. Siga as orienta????es do(a) especialista.  Verifique a carteirinha de vacina????o de ${store.controllerKidName.text}. ?? importante mant??-la em dia.'),
                      textCTRST(
                          stg1:
                              'O movimento parece que estar?? empurrando para o lado, de modo'
                              ' que ${store.controllerKidName.text} mantenha-se ',
                          stg2: "sentado (a)",
                          stg3:
                              ", assim poderemos treinar o equil??brio e o apoio na lateral"
                              " com a m??ozinha."),
                      textCTRST(
                          stg2: "Importante:",
                          stg3:
                              " observe a rea????o de ${store.controllerKidName.text} e o movimento dever?? ser bem devagar,"
                              " somente para provocar um deslocamento e uma rea????o de controle "
                              "de equil??brio do corpo."),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Nessa tarefa, fa??a sons de trenzinho, ensine ${store.controllerKidName.text} a '
                              'fazer tamb??m. Nessa fase ${store.controllerKidName.text} aprender?? a imitar algumas a????es'
                              ' e sons, por isso aproveite a brincadeira aumentando seu elo '
                              'afetivo e intera????o.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: 'DEV21TASK2'),
                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Crian??as nessa idade adoram conversar e ouvir conversas.'
                              ' Conte uma hist??ria para ${store.controllerKidName.text}, com muitos sons e muitos sorrisos.'
                              ' Esse momento tamb??m deve ser para voc?? relaxar deixando de'
                              ' lado a rotina di??ria.'),
                      textCTRST(
                          stg1:
                              '\u2055 Qualquer um que se aproximar de ${store.controllerKidName.text} com uma express??o facial engra??ada tem grandes chances de conquistar a amizade de ${store.controllerKidName.text}. Aproveite essa fase para socializa????o e familiariza????o. N??o esque??a a orienta????o da lavagem de m??os antes de aproximar de ${store.controllerKidName.text} e de seus brinquedos.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Fa??a com que, em dados momentos da hist??ria, voc?? fa??a'
                              ' c??cegas em ${store.controllerKidName.text}, estimulando os m??sculos da face, pelo sorriso,'
                              ' e do tronco, pela for??a que ${store.controllerKidName.text} ir?? fazer em resposta as c??cegas.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Nesta etapa os movimentos efetuados de ',
                          stg2: "barriguinha para baixo",
                          stg3:
                              "?? muito importante para a conquistas das pr??ximas etapas, como"
                              " o andar, ent??o deixe ${store.controllerKidName.text} nos diferentes hor??rios do dia de "
                              "brincando de barriga para baixo, voc?? presenciar?? a grande "
                              "evolu????o e as novas conquistas no desenvolvimento."),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 As crian??as pouco expostas nesta posi????o de ',
                          stg2: "barriguinha para baixo",
                          stg3:
                              ", geralmente, se expressam com desconforto fazendo caretinha"
                              " e chorinho. Frente a essa situa????o precisamos proporcionar "
                              "essa experi??ncia na posi????o para ${store.controllerKidName.text} acostumar. Em cada per??odo"
                              " do dia voc?? coloca um pouquinho ${store.controllerKidName.text} de barriga para baixo"
                              " e brinca, ao poucos acostumar??!"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: 'DEV21TASK3'),
                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos estimular os movimentos laterais. Com ${store.controllerKidName.text} na ',
                          stg2: "posi????o sentado (a)",
                          stg3:
                              ", se posicione atr??s de ${store.controllerKidName.text} e interaja com ele (a), falando"
                              " ???oooii???, ???cad?? ${store.controllerKidName.text}????, fazendo um barulho com o brinquedo/objeto."),
                      textCTRST(
                          stg1:
                              '\u2055 Permita alguns momentos em lugar seguro e de costume de perman??ncia de ${store.controllerKidName.text}, observe e deixe ${store.controllerKidName.text} brincar para explorar os brinquedos, mas fica atenta e observe sempre os movimentos de ${store.controllerKidName.text}.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 ${store.controllerKidName.text} ir?? procurar o som, virando-se o corpo para '
                              'encontr??-lo e quando acontecer o movimento, sorria e com muita'
                              ' festa por suas tentativas, sempre com o contato visual face'
                              ' a face para estimular o sorriso de ${store.controllerKidName.text} tamb??m.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: 'DEV21TASK4'),
                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1: '\u2055 Agora vamos ver a ',
                          stg2: "movimenta????o em todas as posi????es corporais",
                          stg3:
                              ", voc?? poder?? estimular de forma volunt??ria. Registre! Como"
                              " os movimentos de ${store.controllerKidName.text} est??o de barriga para baixo, barriga para"
                              " cima, rolar e sentado. Deixe no ??lbum do aplicativo os registros."
                              " Vamos comemorar juntos essas conquistas!"),
                      textCTRST(
                          stg1:
                              '\u2055 A hora do banho pode ser um momento relaxante. Assegure os cuidados necess??rios para evitar acidentes. Nunca deixe ${store.controllerKidName.text} sozinho no momento do banho e de troca de roupa. ${store.controllerKidName.text} j?? movimenta com maior rapidez e pode ocorrer quedas. Fique de olho!'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Comemore cada conquista dos novos movimentos corporais.'
                              ' O sorriso e a gargalhada j?? fazem parte da linguagem da crian??a!'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Um movimento novo, coloque ${store.controllerKidName.text} em p?? com apoio (sof??,'
                              ' cadeira) pegue a m??o de ${store.controllerKidName.text} e estimule a sentar no ch??o, '
                              'vamos treinar o agachamento.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: 'DEV21TASK5'),
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
