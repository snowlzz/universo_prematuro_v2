import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa35Page extends StatefulWidget {
  final String title;
  const Tarefa35Page({Key? key, this.title = 'Tarefa35Page'}) : super(key: key);
  @override
  Tarefa35PageState createState() => Tarefa35PageState();
}

class Tarefa35PageState extends State<Tarefa35Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV35").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV35';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV35';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 35"),
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
                                "SIGA A 35?? TAREFA EM CASA",
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
                                          viewportFraction: 0.75,
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
                                              'images/fig79-6.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig1012-9.jpeg',
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
                                          'Cada vez mais ${store.controllerKidName.text} se esfor??a para andar com ajuda dos m??veis seguros da casa. Deixe que ${store.controllerKidName.text} explore esse movimento de forma independente. As quedas da pr??pria altura acontecer??o, fique calma(o) e incentive o levantar, ???pulouuuu???'),
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
                                      MediaQuery.of(context).size.height * 1.5,
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
                                          'A qualquer tentativa de emiss??o de som, por parte de ${store.controllerKidName.text}, encoraje mais e mais. Procure n??o ficar entendendo a comunica????o por gestos ou olhares e mesmo situa????es que direciona o dedo para mostrar a vontade do alcance do objeto. Vamos em frente!'),
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
                                          'Essa fase de desenvolvimento, ${store.controllerKidName.text} fica muito tempo no ch??o para brincar. Limpe todo o ambiente, principalmente nos cantos das paredes, embaixo do sof?? e locais que os brinquedos fiquem guardados, para evitar algum contratempo com bichos indesej??veis.'),
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
                                                      builder: ((context) => const TaskThirteenFi())
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
class TaskThirteenFi extends StatefulWidget {
  const TaskThirteenFi({super.key});

  @override
  State<TaskThirteenFi> createState() => _TaskThirteenFiState();
}

class _TaskThirteenFiState extends State<TaskThirteenFi> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 35"),
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
                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Outro movimento associado, ${store.controllerKidName.text} ',
              stg2: 'sentado(a)',
              stg3: ' estimule o deslocamento, fique um pouco distante de ${store.controllerKidName.text} e chame ${store.controllerKidName.text} para vir at?? voc??. Para a ocorr??ncia do movimento ter?? que mudar da posi????o sentado para barriga para baixo, gerando o arrastar e/ou engatinhar.'
          ),textCTRST(stg1: '\u2055 Para ${store.controllerKidName.text} se movimentar com seguran??a, a fam??lia deve organizar um espa??o na casa. Tirar do alcance dele (a) os objetos que n??o pode pegar, bloquear de forma segura o acesso ?? cozinha ou a outro local perigoso com port??ozinho pr??prio ou mesmo uma cadeira segura.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ofere??a brinquedos que fazem barulhos. O ru??do, associado ao movimento que ${store.controllerKidName.text} deve fazer para gerar o som, ?? uma maneira divertida de ensinar que toda a????o tem uma rea????o.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Por exemplo, um cachorrinho de brinquedo, ensine a imitar e a chamar de ???au... au...???. Fa??a voc?? primeiro, mostre e explique como se faz, sempre identifique as a????es verbalizando todas as etapas.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} na posi????o ',
            stg2: 'barriguinha pra baixo',
            stg3: ', coloque o brinquedo favoritoa sua frente e deixe brincar um pouco e explorar o brinquedo, depois voc?? sentada na cadeira pr??ximo de ${store.controllerKidName.text} pegue o brinquedo e deixe ${store.controllerKidName.text} vir atr??s para alcan????-lo. ${store.controllerKidName.text} ir?? se deslocar no ch??o, apoiar em suas pernas e subir, voc?? pode apoiar oferecendo a sua m??o para ajudar o movimento.'
          ),textCTRST(stg1: '\u2055 Ajude ${store.controllerKidName.text} a aproveitar a hora do banho ao m??ximo. Incentive a experimenta????o com brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 No momento do movimento acima, interaja com ${store.controllerKidName.text} conversando sobre o brinquedo chamando a aten????o e dialogando. ',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} est?? crescendo e consegue fazer muitos movimentos sozinho, deixe-o executar as novas habilidades, assim ${store.controllerKidName.text} sentir?? o prazer da conquista e o sucesso da execu????o.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Repita essa tarefa para o aprendizado do movimento, fortalecimento dos m??sculos e melhorando o equil??brio.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Busque recipientes de pl??stico na sua casa, que tenham tampa. Com ${store.controllerKidName.text} na posi????o ',
              stg2: 'sentado(a)',
              stg3: ', ensine ${store.controllerKidName.text} a tampar os recipientes, sempre oferecendo ajuda quando necess??rio.'
          ),textCTRST(stg1: '\u2055 ?? importante adaptar a casa para ${store.controllerKidName.text}. Certifique-se de colocar objetos perigosos em locais mais altos e seguros.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Perto do recipiente de pl??stico com tampa deixe alguns brinquedos de diferentes tamanhos, formas e cores que possam ser guardados no pote. Mostre a possibilidade de guardar os objetos no pote e tir??-los. Ap??s a demonstra????o, deixe ${store.controllerKidName.text} brincar sozinho interagindo e observando os detalhes de sua brincadeira.',
          ),textCTRST(stg1: '\u2055 Proporciona o espa??o adequado para os movimentos de ${store.controllerKidName.text}, deixe brincar sozinho mantendo a sua supervis??o a dist??ncia.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar de esconder! Guarde o brinquedo favorito de ${store.controllerKidName.text} em um lugar acess??vel, no local que est?? ocorrendo a brincadeira, e permita que ${store.controllerKidName.text} veja onde o brinquedo est??. Incentive o arrastar e/ou engatinhar para que ${store.controllerKidName.text} busque o brinquedo e aproveite para experimentar a conquista da recupera????o do brinquedo.',
          ),textCTRST(stg1: '\u2055 Nessa fase de desenvolvimento, ${store.controllerKidName.text} fica muito tempo no ch??o para brincar,portando o ambiente deve estar bem limpoe higienizado, principalmente nos cantos das paredes, embaixo do sof?? e locais que os brinquedos fiquem guardados, para evitar algum contratempo com insetos indesej??veis.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Continuando a brincadeira do esconde-esconde, na posi????o ',
              stg2: 'sentado(a)',
              stg3: ', esconda o brinquedo embaixo de uma almofada e deixe ${store.controllerKidName.text} achar, girando o tronco, apoiando uma m??o na lateral... Ao final da brincadeira, achando o brinquedo, vamos comemorar com um ???vivaaaa???. As palavras de apoio ajudam o interesse no movimento e estimula para a repeti????o e aprendizado.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} no seu colo, segure-o(a) e fa??a movimentos de modo que ele(a) pare??a estar pulando. Incentive que ${store.controllerKidName.text} fa??a for??a nas perninhas.',
          ),textCTRST(stg1: '\u2055 Ao dormir, ${store.controllerKidName.text} descansa de todos os est??mulos que recebeu enquanto acordado (a). Desta forma, ofere??a horas com qualidade de sono.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 A cada tentativa brinque dizendo, por exemplo: ???upa???, ???ehhh???ou outras pequenas express??es sonoras de intera????o positiva.',
          ),textCTRST(stg1: '\u2055 Siga as orienta????es de todos os profissionais da sa??de que est??o acompanhando o desenvolvimento de ${store.controllerKidName.text}. Qualquer d??vida, nos envie seus questionamentos e d??vidas acessando a tecla???FALE CONOSCO???.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Permita alguns momentos em lugar seguro e de costume de perman??ncia de ${store.controllerKidName.text}, observe e deixe brincar sozinho(a) para explorar com aten????o e observa????o aos brinquedos.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK5'),

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
