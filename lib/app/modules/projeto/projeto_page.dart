import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:universo_prematuro_v2/app/modules/projeto/projeto_store.dart';

class ProjetoPage extends StatefulWidget {
  final String title;
  const ProjetoPage({Key? key, this.title = 'ProjetoPage'}) : super(key: key);
  @override
  ProjetoPageState createState() => ProjetoPageState();
}

class ProjetoPageState extends State<ProjetoPage> {
  final ProjetoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "O Projeto",
            style: TextStyle(),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 253, 158, 104),
          elevation: 0,
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios_new),
          //   onPressed: (){
          //      Modular.to.popUntil(ModalRoute.withName("/homecontent/"));
          //   },
          // ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 253, 158, 104),
              Color.fromARGB(255, 255, 193, 143)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(
                      "images/logo/logologin.png",
                      width: 230,
                      height: 230,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 5))
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * .85,
                    height: MediaQuery.of(context).size.height * 1.65,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                        const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child:  Text(
                              'O projeto ???Universo Prematuro??? envolve uma ferramenta '
                              'digital para oferecer o melhor cuidado longitudinal de '
                              'crian??as nascidas prematuras (idade gestacional menor que'
                              ' 37 semanas) no per??odo p??s-alta hospitalar.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Os primeiros anos de vida ?? reconhecido como o per??odo '
                              'alvo para alcan??ar melhores habilidades motoras, '
                              'cognitivas e psicossociais. Os est??mulos direcionados '
                              'corretamente do ambiente, do meio social e familiar, para'
                              ' as crian??as ap??s o nascimento favorecem para o '
                              'desenvolvimento integral, que otimiza o potencial para a '
                              'vida adulta.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Esse aplicativo ???Universo Prematuro??? acompanhar?? o '
                              'desenvolvimento e crescimento da crian??a nascida '
                              'prematura, de forma supervisionada, interdisciplinar e '
                              'sistem??tica, com alcance no domic??lio. O aplicativo '
                              'digital ?? um canal que gera proximidade entre os '
                              'profissionais e o cuidador da crian??a, e disponibilizar?? '
                              'informa????es referentes a est??mulos direcionados para o '
                              'desenvolvimento das crian??as. Com o conceito digital o '
                              'envio de d??vidas, registro temporal do desenvolvimento e '
                              'ao mesmo tempo os registros em v??deos e fotos ser??o '
                              'permitidos.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'No aplicativo digital cada etapa cronol??gica de crian??a ??'
                              ' registrada permitindo o acompanhando das conquistas dos '
                              'marcos motores. A vigil??ncia do desenvolvimento infantil '
                              'pelo aplicativo possibilitar?? a identifica????o precoce de '
                              'sinais de alerta, sendo elemento de prote????o ao '
                              'desenvolvimento da crian??a.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'O aplicativo contar?? com tarefa de est??mulo para a '
                              'crian??a com blocos de tr??s em tr??s meses do primeiro ano '
                              'de vida, as notifica????es s??o liberadas no aplicativo a '
                              'cada 10 dias para lembrar das atividades de est??mulo e '
                              'registros.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '???O Universo Prematuro??? ?? para todas as crian??as nascidas '
                              'prematuras, uma prote????o para o direito do melhor '
                              'desenvolvimento.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          RichText(
                              text: const TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16.0),
                          )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Center(
                      child: Text("Parcerias",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.asset(
                            //   "images/cartilhachb.png",
                            //   width: 220,
                            // ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "images/cartilhacapes.png",
                              width: 220,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            // Image.asset(
                            //   "images/cartilhafapesp.png",
                            //   width: 220,
                            // ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "images/cartilhaprefeitura.png",
                              width: 220,
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Image.asset(
                              "images/cartilhaunifran.png",
                              width: 220,
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  InteractiveViewer(
                      panEnabled: false, // Set it to false to prevent panning.
                      boundaryMargin: const EdgeInsets.all(80),
                      maxScale: 3,
                      minScale: 1,
                      child: Image.asset(
                        "images/cartilhamapa.png",
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 65,
                  ),

                  Column(
                    children: [
                      Image.asset('images/cartilhaidentity1.jpg',),
                      Image.asset('images/cartilhaidentity2.jpg',),
                      Image.asset('images/cartilhaidentity3.jpg',),
                      Image.asset('images/cartilhaidentity4.jpg',),
                      Image.asset('images/cartilhaidentity5.jpg',),
                      Image.asset('images/cartilhaidentity6.jpg',),
                      Image.asset('images/cartilhaidentity7.jpg',),
                      Image.asset('images/cartilhaidentity8.jpg',),
                      Image.asset('images/cartilhaidentity9.jpg',),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// children: <TextSpan>[
//                                 TextSpan(
//                                   text: 'Parcerias:',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                                 TextSpan(
//                                   text:
//                                       '\n\t\t\tFaculdade de Motricidade Humana - '
//                                       'Universidade de Portugal - Lisboa'
//                                       '\n\t\t\tPrograma de P??s-gradua????o em Lingu??stica - Universidade de Franca'
//                                       '\n\t\t\tSetor de Tecnologia da Informa????o da '
//                                       'Universidade de Franca'
//                                       '\n\t\t\tN??cleo de Design - Universidade de Franca',
//                                 ),
//                                 TextSpan(
//                                   text: '\n\nApoio:',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                                 TextSpan(
//                                   text:
//                                       '\n\t\t\t Funda????o de Amparo ?? Pesquisa do Estado'
//                                       ' de S??o Paulo (FAPESP)'
//                                       '\n\t\t\tCoordena????o de Aperfei??oamento de Pessoal '
//                                       'de N??vel Superior (CAPES)',
//                                 ),
//                               ],
//                             ),

// Column(

//           children: <Widget>[

//             Image.asset('images/logo/LogoMov.gif',height: 200.0,),

//             const SizedBox(height: 20.0,),
