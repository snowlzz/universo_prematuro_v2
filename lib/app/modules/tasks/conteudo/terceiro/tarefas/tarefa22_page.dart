import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa22Page extends StatefulWidget {
  final String title;
  const Tarefa22Page({Key? key, this.title = 'Tarefa22Page'}) : super(key: key);
  @override
  Tarefa22PageState createState() => Tarefa22PageState();
}

class Tarefa22PageState extends State<Tarefa22Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV22").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV22';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV22';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 22"),
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
                                "SIGA A 22?? TAREFA EM CASA",
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
                                          'Incentive para que sua crian??a '
                                              'pegue brinquedos de diferentes tamanhos, cores e pesos. Esse '
                                              'est??mulo ?? muito importante para o desenvolvimento da destreza '
                                              'manual, fundamental para qualquer crian??a. Estimule a pegar '
                                              'brinquedos menores para executar o movimento com os dois dedos '
                                              'fazendo a pegada e sustenta????o do objeto.'),
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
                                          20.0, 10.0, 20.0, 20.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Linguagem',
                                          '?? importante voc?? sempre passar '
                                              'confian??a, afeto e incentivo na sua fala com ${store.controllerKidName.text}. Isso far?? a '
                                              'diferen??a no desenvolvimento da crian??a.'),
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
                                                      builder: ((context) => const TaskTwentT())
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
class TaskTwentT extends StatefulWidget {
  const TaskTwentT({super.key});

  @override
  State<TaskTwentT> createState() => _TaskTwentTState();
}

class _TaskTwentTState extends State<TaskTwentT> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 22"),
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
              stg1: '\u2055 Coloque ${store.controllerKidName.text} para engatinhar em cima de diferentes '
                  'texturas, de maneira segura. Em cima de cobertores, toalhas,'
                  ' tapetes, ',
              stg2: "E.V.A",
              stg3: ", tudo vale para deixar ${store.controllerKidName.text} com melhor equil??brio e"
                  " agilidade no movimento."
          ),textCTRST(stg1: '\u2055 Mantenha a carteirinha da crian??a em dia e n??o falte ??s consultas regulares de acompanhamento. Acompanhe a vacina????o e verifique se est?? em dia! Siga somente orienta????es do cuidado da crian??a com profissionais da sa??de e de sua confian??a. Cuidado com quedas em lugares altos, cadeirinha, carrinho... Evite!'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante essas descobertas, narre e converse sobre '
                  'essas diferentes texturas, divirtam-se, afinal tudo ?? novo '
                  'para ${store.controllerKidName.text}. Fa??a isso, sempre que poss??vel! Converse com ${store.controllerKidName.text}'
                  ' as coisas boas do dia, aproveita para voc?? relaxar.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Toda semana procure trocar os brinquedos/objetos, como'
                  ' exemplo, se ${store.controllerKidName.text} brincar com seis objetos, voc?? poder?? trocar'
                  ' tr??s ou dois, ent??o far?? um rodizio dos brinquedos tornando '
                  'aquele movimento gostoso e de distra????o.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Conte uma hist??ria para ${store.controllerKidName.text}! A hist??ria se passa em'
                  ' uma fazenda e os personagens principais s??o os bichinhos que'
                  ' vivem nela, como vaca, boi, cachorro, gatinho, porquinho.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} est?? crescendo e consegue fazer movimentos novos a cada dia. Deixe todos os produtos de limpeza, tesouras, pregos e todo material que pode ser um risco para ${store.controllerKidName.text} bem guardados. Observe as mudan??as no desenvolvimento de ${store.controllerKidName.text}. O registro permitir?? a observa????o dessas mudan??as.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 A cada vez que falar de um animalzinho, ensine ${store.controllerKidName.text} '
                  'o barulho que o bichinho faz, direcionando-se face a face com'
                  ' ${store.controllerKidName.text}, para que observe o som sendo articulado em sua boca. '
                  'Faz os ru??dos dos animais e se poss??vel mostre a figura e/ou '
                  'mesmo um desenho produzido.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Cante uma can????o para ${store.controllerKidName.text}! Busque uma m??sica infantil'
                  ' que agrade ${store.controllerKidName.text} e cante para ele (a). Tente ensinar pequenas '
                  'silabas das palavras que aparecem na m??sica.'
          ),textCTRST(stg1: '\u2055 Lembre! ${store.controllerKidName.text} est?? desenvolvendo e novos movimentos est??o surgindo, ent??o vamos assegurar que o ber??o fique longe da janela do quarto e mantenha as prote????es laterais (grades) do ber??o.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Can????es infantis s??o ??timas para a familiariza????o de'
                  ' frases e palavras, facilitando a aquisi????o de linguagem e '
                  'compreens??o das crian??as. Qualquer tentativa de vocaliza????o '
                  'de ${store.controllerKidName.text} deve ser estimulada.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Um movimento para combinar, deixe um brinquedo ou objeto '
                  'que ${store.controllerKidName.text} goste em cima do sof??, mostre e estimule ${store.controllerKidName.text} para pega-lo'
                  ', pode ajudar segurando na m??o de ${store.controllerKidName.text}. Depois, quando estiver de ',
              stg2: "p?? com apoio",
              stg3: " (sof??, cadeira) pegue a m??o de ${store.controllerKidName.text} e estimule a sentar no"
                  " ch??o (pode deixar o brinquedo cair no ch??o para ficar mais divertido"
                  " e interessante), vamos treinar o levantar e o agachamento."
          ),
          const SizedBox(height: 15.0,),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos construir uma torre. Com ${store.controllerKidName.text} na ',
              stg2: "posi????o sentado (a)",
              stg3: ", d?? blocos para que ${store.controllerKidName.text} consiga construir uma torre. Incentive"
                  " a constru????o de uma torre alta, oferecendo auxilio para ${store.controllerKidName.text}"
                  " e quando precisar ficar em p?? para colocar os blocos que ficam"
                  " no alto voc?? poder?? ajudar com o apoio das m??os. A brincadeira"
                  " tamb??m pode acontecer com ${store.controllerKidName.text} em p?? de frente ao sof?? ou cadeira."
          ),textCTRST(stg1: '\u2055 Para a memoriza????o de ${store.controllerKidName.text}, voc?? dever?? repetir as atividades. N??o se espante se ${store.controllerKidName.text} n??o aprender uma li????o logo na primeira tentativa. Seja persistente. Em caso de d??vidas sobre o crescimento e desenvolvimento de ${store.controllerKidName.text}, entre em contato conosco na aba d??vidas do aplicativo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Encoraje ${store.controllerKidName.text} a realizar os movimentos com os cubos '
                  'e v?? conversando sobre as cores, formas e parabenize qualquer'
                  ' tentativa de ${store.controllerKidName.text}. Fa??a isso, sempre!',
              stg2: "\nOBS:",
              stg3: " Os blocos podem ser constru??dos com madeira, cubos de 2x2cm,"
                  " 3x3cm....... diferentes tamanhos e se quiser pintar ficar??"
                  " colorido e mais interessante."
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK4'),

          const SizedBox(height: 60.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: '\u2055 Os movimentos dever??o ser associados, processo de evolu????o '
                  'no desenvolvimento. Com ${store.controllerKidName.text} deitado de ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: const <TextSpan>[
                TextSpan(text: 'barriguinha para cima', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' estimule para sentar, se estiver de '),
                TextSpan(text: 'barriguinha para baixo', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ', estimule virar de '),
                TextSpan(text: 'barriguinha para cima', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' ou mesmo de '),
                TextSpan(text: 'barriguinha para baixo', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' com apoio nas m??os levantar para a posi????o de '),
                TextSpan(text: 'p??', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '. N??o ?? hora de andar, mas ?? hora de estimular a ficar na posi????o em '),
                TextSpan(text: 'p??', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),textCTRST(stg1: '\u2055 Nesta idade ${store.controllerKidName.text} observa melhor ao seu redor, as pessoas, o ambiente e todos os objetos da casa. As brincadeiras em locais seguros, tranquilos e com pessoas de confian??a ajudam para o melhor desenvolvimento.'),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} ',
              stg2: "sentado (a)",
              stg3: " no colo, de frente a voc??, ensine a cantar parab??ns,"
                  " batendo as palminhas e levantando os bra??os."
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Sempre que ${store.controllerKidName.text} emitir sons na tentativa de se expressar,'
                  ' interaja com ${store.controllerKidName.text} conversando de forma tranquila e calma para '
                  'que observe as suas express??es, gestos e palavras. Determine '
                  'esse tempo de exerc??cio para tamb??m conversar com ${store.controllerKidName.text} e'
                  ' observar suas rea????es.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK5'),

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
