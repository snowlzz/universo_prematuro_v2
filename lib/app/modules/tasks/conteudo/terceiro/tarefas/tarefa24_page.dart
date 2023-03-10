import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';
class Tarefa24Page extends StatefulWidget {
  final String title;
  const Tarefa24Page({Key? key, this.title = 'Tarefa24Page'}) : super(key: key);
  @override
  Tarefa24PageState createState() => Tarefa24PageState();
}

class Tarefa24PageState extends State<Tarefa24Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV24").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV24';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV24';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 24"),
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
                                "SIGA A 24?? TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * 1.1,
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
                                              'images/fig79-8.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images/fig79-6.jpeg',
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
                                          20.0, 10.0, 20.0, 45.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '?? importante para ${store.controllerKidName.text} todos os '
                                              'est??mulos que refor??a os movimentos aprendidos. No inicio ?? '
                                              'dif??cil, mas a cada semana cumprindo as tarefas esses movimentos'
                                              ' ir??o se tornar mais f??ceis e de melhor dom??nio. Comece a reduzir'
                                              ' a sua ajuda para que ${store.controllerKidName.text} efetue os movimentos e deixe que ${store.controllerKidName.text}'
                                              ' adquira for??a muscular, equil??brio pois ?? primordial para o '
                                              'andar de forma independente.'),
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
                                      MediaQuery.of(context).size.height * 1.15,
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
                                          20.0, 10.0, 20.0, 30.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          'Sempre que for ensinar uma palavra para'
                                              ' ${store.controllerKidName.text}, fa??a de maneira devagar os movimentos da boca, d?? o '
                                              'sentido da palavra mostrando o objeto. Assim, ${store.controllerKidName.text} ir?? copiar '
                                              'seus gestos e associar a palavra com a situa????o do ambiente.'),
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
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                'A crian??a nessa idade quer explorar'
                                                    ' e ?? muito curiosa. Tenha cuidado com objetos pr??ximos a ele(a), '
                                                    'degraus e escadarias. Tamb??m evite deixar ${store.controllerKidName.text} explorar estantes '
                                                    'ou mesas que possam balan??ar e que um objeto possa cair na '
                                                    'crian??a. Evita acidentes, proteja sua crian??a!'),
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
                                                      builder: ((context) => const TaskTwentFo())
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
class TaskTwentFo extends StatefulWidget {
  const TaskTwentFo({super.key});

  @override
  State<TaskTwentFo> createState() => _TaskTwentFoState();
}

class _TaskTwentFoState extends State<TaskTwentFo> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 24"),
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
                height: MediaQuery.of(context).size.height * 7,
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
              stg1: '\u2055 Frases curtas, o tom de voz, gestos e as express??es '
                  'faciais suaves e bem articuladas ajudam ${store.controllerKidName.text} perceber sensa????es'
                  ' e sentidos da fala do adulto. Fa??a esses exerc??cios periodicamente.'
                  ' Vamos construindo pequenas frases de atividade do dia a dia '
                  'e repetindo para ${store.controllerKidName.text}, ???Quem vai tomar banho agora????, ???Cad?? a'
                  ' vov??, o titio.....???,  ???Agora ?? hora de dormir???.........'
          ),textCTRST(stg1: '\u2055 O sorriso ?? uma intera????o que demonstra a felicidade. Sempre que ${store.controllerKidName.text} sorrir, retorne interagindo com um largo sorriso para que entenda que interagiu com voc?? por meio do sorriso. Um sorriso mostra seguran??a, bem-estar, conforto. Vamos praticar!'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Procure fazer as atividades e tarefas com ${store.controllerKidName.text} nos mesmos'
                  ' hor??rios do dia, a rotina di??ria estabelecida ?? mais saud??vel '
                  'para ${store.controllerKidName.text} (ficar?? mais calmo, concentrado e com maior intera????o '
                  'no ambiente). Organize o tempo, voc?? tamb??m precisa para seus cuidados!'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV24TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer o sinal de tchau. Primeiro, voc?? ir?? fazer o movimento e depois pe??a para ${store.controllerKidName.text} fazer tamb??m. Caso ${store.controllerKidName.text} tenha dificuldades em levantar os bra??os ou a m??o, mostre como fazer, pegando no bracinho dele (a). A repeti????o do estimulo ?? importante para o aprendizado e memoriza????o.'
          ),textCTRST(stg1: '\u2055 Para qualquer aprendizado de ${store.controllerKidName.text}, a melhor forma ?? explicar, mostrar com paci??ncia e carinho. Todas as situa????es que s??o elogiadas e n??o repreensivas (gritos, gestos agressivos, movimentos rudes) ?? aprendida mais f??cil e com melhor desenvolvimento.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Voc?? dever?? sentar no ch??o com ${store.controllerKidName.text} na sua frente e uma das suas m??os voc?? mostrar?? o brinquedo e logo ap??s esconde essa m??o atr??s do seu corpo, vamos ver a rea????o de ${store.controllerKidName.text}. A observa????o poder?? ser predominante, ent??o voc?? mostra o brinquedo novamente e esconde, vamos estimulando ${store.controllerKidName.text} para o deslocamento em busca do objeto.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais com parab??ns, cantando m??sicas infantis e com brincadeiras sentir?? a import??ncia das suas conquistas e seu apoio em casa fase.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV24TASK2'),

          const SizedBox(height: 60.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Com ${store.controllerKidName.text} na posi????o ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: <TextSpan>[
                const TextSpan(text: 'barriguinha pra cima, ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'ofere??a seus dedos para ele (a) segurar e incentive para que ${store.controllerKidName.text} passe para a '),
                const TextSpan(text: 'posi????o sentado (a).', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),textCTRST(stg1: '\u2055 Um ambiente agitado favorece para a irritabilidade da crian??a. Um ambiente calmo provoca serenidade e colabora para o desenvolvimento e o crescimento. Mantenha a rotina di??ria de alimenta????o, sono, banho e brincadeiras. Procure manter um ambiente seguro e tranquilo, contribuindo com toda a fam??lia.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 ?? importante estimular a independ??ncia. Por isso, nessa tarefa, tente oferecer o menor suporte poss??vel para que ${store.controllerKidName.text} consiga sentar sozinho (a).'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Comemore sempre, cantando m??sicas infantis e com brincadeiras sentir?? a import??ncia das suas conquistas e seu apoio em casa fase.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV24TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer caretas. Fa??a voc?? movimentos de abrir bem a boca, falando ???aaaa???; mexer e enrugar o nariz, fazendo ???bichinhos??? ???caminh??ozinho???. Estimule ${store.controllerKidName.text}, fazendo com que ocorra a imita????o.'
          ),textCTRST(stg1: '\u2055 O espa??o organizado ajuda para o aprendizado de ${store.controllerKidName.text}. Mantenha o ambiente limpo, bem ventilado e com objetos seguros para a brincadeira e aprendizado. Cuidado com brinquedos e pe??as pequenas, evite acidentes dom??sticos.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante o exerc??cio ofere??a um brinquedo para ${store.controllerKidName.text} segurar e o estimule a soltar, (quando soltar) diga ???ahhhh??? caiu! Recomece oferecendo e deixe ${store.controllerKidName.text} pegar, mas antes pergunte ???voc?? quer????  E v?? repetindo como uma brincadeira, dialogando sempre, face a face.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 ${store.controllerKidName.text} deitado de ',
              stg2: "barriguinha para baixo,",
              stg3: " coloque um brinquedo ou objeto de preferencia um pouco distante e na lateral do corpo de ${store.controllerKidName.text}, mexa no brinquedo e deixe-o no mesmo lugar para chamar a aten????o de ${store.controllerKidName.text}. Vamos somente observar, fique um pouco distante de ${store.controllerKidName.text} para que n??o perceba a sua presen??a. Deixa ${store.controllerKidName.text} em seu tempo organizar o seu deslocamento corporal com movimentos em busca do brinquedo. Os movimentos dever??o ser livres sem interfer??ncia do adulto. Se n??o conseguir alcan??ar o brinquedo neste momento, vai repetindo a brincadeira, uma hora que menos esperar vai acontecer!"
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV24TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Se o ambiente tiver um degrau de escada e com a sua supervis??o direta, coloque ${store.controllerKidName.text} no inicio do degrau e na parte de cima deixe um brinquedo, estimule ${store.controllerKidName.text} a ficar de joelho e m??os na parte superior do degrau, a partir desta postura, estimule dobrar um joelho e subir para alcan??ar o brinquedo.'
          ),textCTRST(stg1: '\u2055 Se ${store.controllerKidName.text} estiver brincando com objetos indevidos para o momento, voc??, de forma gentil, dever?? dizer ???N??o???, e o objeto anterior dever?? ser trocado com um objeto seguro para a continuidade da brincadeira e ${store.controllerKidName.text} ser?? direcionado para a outra atividade com seguran??a.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Depois do movimento acima ser executado por ${store.controllerKidName.text}, estimule com sua ajuda a descer o degrau de bumbum.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Momento de incorporar na rotina algumas s??labas na conversa como, por exemplo: ???d?? aqui para mam??e???. Assim, v?? estimulando a pr??tica do ???d??-d??-d?????, ???m??-m??-m????? e/ou ???p??-p??-p????? e mesmo o ???me d?????, ???cad?????, t??...'
          ),
          const SizedBox(height: 15.0,),
          Radin(task:'DEV24TASK5'),

          const Padding(
            padding: EdgeInsets.only(left: 20.0,right:20.0,bottom:10.0,top:30.0),
            child: Text(
              "Parab??ns! Estamos indo muito bem com a estimula????o.",
              style: TextStyle(
                  color: Color.fromARGB(255, 193, 61, 39),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic
              ),
              textAlign: TextAlign.center,
            ),
          ),

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
