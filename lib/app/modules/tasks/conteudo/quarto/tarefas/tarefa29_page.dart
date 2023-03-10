import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';

class Tarefa29Page extends StatefulWidget {
  final String title;
  const Tarefa29Page({Key? key, this.title = 'Tarefa29Page'}) : super(key: key);
  @override
  Tarefa29PageState createState() => Tarefa29PageState();
}

class Tarefa29PageState extends State<Tarefa29Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV29").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV29';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV29';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 29"),
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
                                "SIGA A 29?? TAREFA EM CASA",
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
                                          //height: 190.0,
                                          reverse: false,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          viewportFraction: 0.76,
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
                                          'Nessa fase, ${store.controllerKidName.text} adquire for??as contra a gravidade, rolando, sentando sem apoio e ficando em p??. Vamos trabalhar os est??mulos para aprimorar esses movimentos?'),
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
                                      MediaQuery.of(context).size.height * 1.45,
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
                                          20.0, 10.0, 20.0, 35.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon91.png')),
                                      ),
                                      child: regText('\u25CF Linguagem',
                                          'O afeto e a intera????o constante com os pais e familiares s??o primordiais para o desenvolvimento integral da crian??a, interaja, brinque e observe as respostas e express??es de ${store.controllerKidName.text}.'),
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
                                          20.0, 10.0, 20.0, 50.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          '${store.controllerKidName.text} est?? desenvolvendo e crescendo, consegue comunicar com maior independ??ncia, mas ?? hora de redobrar a aten????o.'
                                              '\n- Nunca deixe ${store.controllerKidName.text} totalmente sozinho sem supervis??o,'
                                              '\n- N??o deixe com pessoas desconhecidas, proteja contra os acidentes dom??sticos.'
                                              '\n- Verifique na casa o que poderia oferecer perigo, algum m??vel, objetos pequenos e lembre essa fase ele pode segurar em superf??cie mais alta para se levantar, cuidado com toalhas de mesa em seu alcance.'),
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
                                                      builder: ((context) => const TaskTwentNi())
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
class TaskTwentNi extends StatefulWidget {
  const TaskTwentNi({super.key});

  @override
  State<TaskTwentNi> createState() => _TaskTwentNiState();
}

class _TaskTwentNiState extends State<TaskTwentNi> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 29"),
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
              stg1: '\u2055 Deixe ${store.controllerKidName.text} em um ambiente estimulante, com diferentes objetos/brinquedos seguros, com diferentes texturas, cores, formatos ao seu alcance. Isso ir?? estimular o engatinhar e, posteriormente em sequ??ncia o andar.',
          ),textCTRST(stg1: '\u2055 Crian??as s??o esponjas, elas sempre ir??o imitar os movimentos e atitudes que os adultos a sua volta demonstram. Fique atento ao que voc?? est?? ensinando ?? crian??a.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Aproveite esse momento e brinque com ${store.controllerKidName.text}, estimulando o sorriso e/ou pequenas gargalhadas com m??micas faciais sempre buscando que ${store.controllerKidName.text} mantenha o contato visual fixo em voc??. Estimule ${store.controllerKidName.text} com s??labas:exemplo:ma-ma, pa-pa.',
          ),textCTRST(stg1: '\u2055 Procure higienizar ??s m??ozinhas de beb?? com ??gua e sab??o mesmo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 ?? hora de brincar de rolar, coloque ${store.controllerKidName.text} no ch??o de ',
            stg2: 'barriguinha para cima',
            stg3: ' e depois oferece um brinquedo e/ou objeto de interesse e provoca com movimentos para que ${store.controllerKidName.text} movimente em busca do brinquedo, conseguindo concluir o movimento deixe ${store.controllerKidName.text} brincar um pouco com o objeto. Vamos girar o corpo uma vez para o lado direito e outra para o lado esquerdo. Importante treinar os movimentos dos dois lados do corpo.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV29TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Coloque os brinquedos favoritos de ${store.controllerKidName.text} de diferentes tamanhos e formas, dentro de uma caixa e deixe ${store.controllerKidName.text}, de forma independente, tirar o objeto da caixa e colocar de volta. Fica somente supervisionando de longe.',
          ),textCTRST(stg1: '\u2055 Ensine, ??s pessoas mais pr??ximas, sobre a rotina de ${store.controllerKidName.text}, at?? esse momento. H?? hora para tudo, a de brincar, de relaxar e a de dormir. Orgulhe-se de sua dedica????o, mam??e/papai/av??s/irm??os/cuidadores!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Em um outro momento, a cada brinquedo que ${store.controllerKidName.text} segurar e tirar da caixa, ensine o nome e ensine a repetir as s??labas da palavra, exemplo: ???esse ?? o cho-ca-lho???, ???este ?? o ur-si-nho???...',
          ),textCTRST(stg1: '\u2055 O conv??vio com outras crian??as e familiares queridos ?? importante para o est??mulo do desenvolvimento.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} ',
            stg2: 'sentado (a)',
            stg3: ', ofere??a brinquedos/objetos de diferentes tamanhos, neste momento come??ar?? a pegar objetos menores somente utilizando dois dedos da m??o, na brincadeira dever?? ter objetos de diferentes tamanhos para treinar o movimento de pegar.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV29TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} ',
            stg2: 'de barriguinha para cima',
            stg3: ', coloque seu brinquedo favorito um pouco mais longe de seu alcance. Estimule para que ${store.controllerKidName.text} o alcance, rolando e arrastando.Agora a brincadeira associar?? dois movimentos: o rolar e o arrastar. Como est??? ${store.controllerKidName.text} j?? est?? conseguindo?'
          ),textCTRST(stg1: '\u2055 Neste momento do desenvolvimento, os objetos menores podem ser alcan??ados e manuseados pela crian??a. N??o deixe pe??as pequenas nos locais de acesso (ch??o/ber??o), muito cuidado com rem??dios, principalmente quando acidentalmente caem no ch??o, objetos pontiagudos tamb??m geram risco e os materiais de limpeza devem ser manuseados longe das crian??as e armazenados em ambientes seguros.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Hora do barulho! Ofere??a dois objetos, um em cada m??o e estimule ${store.controllerKidName.text} a bater os objetos um contra o outro. O objeto n??o pode ser grande e deve ter um peso para ${store.controllerKidName.text} conseguir segurar. Quando ${store.controllerKidName.text} executar o movimento, vamos incentivar batendo palma e falando ???vivaaa???. O elogio ?? muito importante para as conquistas no momento e futuras.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV29TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos ensinar formas para ${store.controllerKidName.text}. Com ${store.controllerKidName.text} na posi????o ',
            stg2: 'sentado(a)',
            stg3: ', ofere??a objetos seguros no formato bola e quadrado, d??-os para ${store.controllerKidName.text} explor??-los.'
          ),textCTRST(stg1: '\u2055 Estabelecer rela????o de confian??a com a crian??a ?? importante para seu desenvolvimento. Portanto, n??o minta em rela????o a consultas, broncas e tarefas.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 A cada forma diferente que ${store.controllerKidName.text} segurar, fale o formato que o objeto tem ???isso ?? uma bo-la???, ???isso ?? um qua-dra-do???.',
          ),textCTRST(stg1: '\u2055 Sempre que ${store.controllerKidName.text} falhar em alguma tarefa, incentive ${store.controllerKidName.text} a tentar novamente atrav??s de refor??o positivo ???voc?? consegue???, ???levanta e tenta de novo???.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Iniciar uma conversa face a face ?? importante para a intera????o e o aprendizado de ${store.controllerKidName.text}, aproveite para estimular a express??o vocal de ${store.controllerKidName.text}.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Dois movimentos, primeiro deixe ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para baixo',
            stg3: ' e voc?? fica na frente. Chama a aten????o de ${store.controllerKidName.text} para voc?? e oferece suas duas m??os para ${store.controllerKidName.text} segurar e fazer o movimento para levantar, ficando de joelhos e voc?? oferecendo o apoio. Vamos repetindo os exerc??cios e com o treino ${store.controllerKidName.text} ir?? conquistando os movimentos com maior independ??ncia.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV29TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} na posi????o ',
            stg2: 'sentado(a)',
            stg3: ', jogue uma bolinha para ele(a), de maneira que a bolinha passe ao lado de ${store.controllerKidName.text} e que ele tentar?? alcan??ar a bolinha. Esse exerc??cio ir?? favorecer os m??sculos da barriga, importantes para que ${store.controllerKidName.text} consiga andar.'
          ),textCTRST(stg1: '\u2055 Siga todas as orienta????es dos profissionais de sa??de que acompanham o desenvolvimento de ${store.controllerKidName.text}. Pediatra, nutricionista, fisioterapeuta, entre outros, todos est??o juntos para garantir a sa??de de ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Sempre que ${store.controllerKidName.text} fizer uma tentativa e/ou efetivar uma tarefa festeje com ele, d?? parab??ns, bate palma e demostre sua alegria.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 ${store.controllerKidName.text} na posi????o ',
              stg2: 'deitado(a)',
              stg3: ' de costas voc?? dever?? oferecer a sua m??o como suporte para ${store.controllerKidName.text} sentar. Se precisar, no come??o, ofere??a e ap??ie as duas m??os de ${store.controllerKidName.text}, mas com a repeti????o e treino do movimento voc?? passa para somente uma m??o de apoio.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV29TASK5'),

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
