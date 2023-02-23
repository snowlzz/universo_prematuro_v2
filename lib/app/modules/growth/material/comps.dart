//  import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// List<Widget> QSTs(Map answers, BuildContext context){

//     bool ready = null;
//     var result = {true:0,false:0};
//     if(answers != null) {
//       answers.values.forEach(
//               (x){
//                 if (x == true || x ==  false)result[x] = !result.containsKey(x) ? (1) : (result[x] + 1);
//               }
//       );

//       if(result[true]+result[false] == 8 && result[true] >= 5 && answers["n1"] == true &&
//           answers["n2"] == true && answers["n6"] == true && answers["n7"] == true) ready = true;
//       else if(result[true]+result[false] == 8) ready = false;
//     }

//     return [
//       gSignsRadio(index: 1,text: 'Capacidade para sentar sem apoio ou ajuda:',answers: answers,context: context),
//       gSignsRadio(index: 2,text: 'Sustentar a cabeça e o tronco sozinho:',answers: answers,context: context),
//       gSignsRadio(index: 3,text: 'Segurar objetos com as mãos:',answers: answers,context: context),
//       gSignsRadio(index: 4,text: 'Explorar estímulos ambientais:',answers: answers,context: context),
//       gSignsRadio(index: 5,text: 'Interesse pelos objetos (curiosidade):',answers: answers,context: context),
//       gSignsRadio(index: 6,text: 'Leva objetos até a boca:',answers: answers,context: context),
//       gSignsRadio(index: 7,text: 'Movimento voluntário da língua e lábios:',answers: answers,context: context),
//       gSignsRadio(index: 8,text: 'Interesse pelos responsáveis na hora das refeições:',answers: answers,context: context),

//       SizedBox(height: 40.0,),


//       /*(DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays >= 15
//           || DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays == 0)?
//       Text(
//         "Responda as questões acima e resultado será apresentado abaixo:"
//         ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),
//       ):RichText(
//         textAlign: TextAlign.justify,
//         text: TextSpan(
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//             text: 'Aviso: ',
//             children: <TextSpan>[
//               TextSpan(
//                   text: 'Você poderá alterar as respostas daqui a ',
//                   style: TextStyle(fontWeight: FontWeight.normal,)
//               ),
//               TextSpan(
//                   text: '${DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays}',
//               ),
//               TextSpan(
//                   text: ' dias.',
//                   style: TextStyle(fontWeight: FontWeight.normal,)
//               ),
//             ]
//         ),
//       ),*/
//       autoText(answers),

//       SizedBox(height: 40.0,),
//       Row(
//         children: [
//           Expanded(
//             child: Card(
//               color: Color.fromARGB(255, 102, 188, 89),
//               child: Container(
//                   padding: EdgeInsets.all(20.0),
//                   child: Text(
//                     'Sim:  ${result[true]/8*100}%',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   )
//               ),
//             ),
//           ),
//           Expanded(
//             child: Card(
//               color: Color.fromARGB(255, 192, 60, 39),
//               child: Container(
//                   padding: EdgeInsets.all(20.0),
//                   child: Text(
//                     'Não:  ${result[false]/8*100}%',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   )
//               ),
//             ),

//           ),
//         ],
//       ),
//       ready != null?Card(
//         color: ready?Color.fromARGB(255, 102, 188, 89):Color.fromARGB(255, 192, 60, 39),
//         child: Container(
//           alignment: Alignment.center,
//             padding: EdgeInsets.all(30.0),
//             child: Text(
//               'Bebe ${ready? '':'não'} está pronto',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             )
//         ),
//       ),
//     ];
//   }


//   Widget gSignsRadio ({int index, String text, Map answers,BuildContext context}){

//     SingingCharacter _character2 = null;
//     String date = 'Ola mundo';
//     bool aux;

//     aux = true;
//     if (answers == null || answers.length == 0 || answers['date'] == null){
//       aux = true;
//     } else if(DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays >= 10
//         || DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays == 0
//     ) {aux = true;} else {aux = false;}

//     if(answers != null){
//       switch(answers['n${index}']){
//         case true:
//           _character2 = SingingCharacter.sim;
//           break;
//         case false:
//           _character2 = SingingCharacter.nao;
//           break;
//         default:
//           _character2 = null;
//       }
//     } else FirebaseFirestore.instance.collection('users').doc(UID)
//         .collection('gSigns').doc('QSTS').set(
//         {}
//     ).then((value) => null);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 40.0,),
//         RichText(
//           textAlign: TextAlign.justify,
//           text: TextSpan(
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               text: text,
//               children: <TextSpan>[
//                 TextSpan(
//                     text: ' \u279CClique aqui e veja a figura.',
//                     recognizer: TapGestureRecognizer()
//                       ..onTap = (){Navigator.of(context).push(MaterialPageRoute(builder: ((context) => displayIMG(index))));},
//                     style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.w700,
//                     )
//                 ),
//               ]
//           ),
//         ),
//         SizedBox(height: 10.0,),
//         Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Radio(
//                     value: SingingCharacter.sim,
//                     groupValue: _character2,
//                     onChanged: aux?(SingingCharacter value) {
//                       answers.length >= 8? date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString(): date = null;
//                       FirebaseFirestore.instance.collection('users').doc(UID)
//                           .collection('gSigns').doc('QSTS').update(
//                           {'n${index}':true,'date':date}
//                       ).then((value) => null);
//                     }:null
//                 ),
//                 Text('Sim')
//               ],
//             ),
//             Column(
//               children: <Widget>[
//                 Radio(
//                     value: SingingCharacter.nao,
//                     groupValue: _character2,
//                     onChanged: aux?(SingingCharacter value) {
//                       answers.length >= 8? date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString(): date = null;
//                       FirebaseFirestore.instance.collection('users').doc(UID)
//                           .collection('gSigns').doc('QSTS').update(
//                           {'n${index}':false,'date':date}
//                       ).then((value) => null);
//                     }:null
//                 ),
//                 Text('Não')
//               ],
//             ),
//           ],
//         ),
//         SizedBox(height: 15.0,),
//       ],
//     );
//   }

//   Widget displayIMG(int index){
//     List<String> img = ['fig1012-6.jpeg','figg1012-13.jpeg','figg1012-12.jpeg',
//       'fig1012-9.jpeg','figg1012-19.jpeg','figg1012-12.jpeg','fig1012-2.jpeg','figg1012-13.jpeg'];
//     return Scaffold(
//       appBar: AppBar(
//         actions: <Widget>[
//           Image.asset("images/LogoTop.png"),
//           SizedBox(
//             width: 10.0,
//           )
//         ],
//         centerTitle: true,
//         title: Text(
//           'Crescimento',
//           style: TextStyle(
//               fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         elevation: 1.5,
//       ),
//       body: Image.asset('images/${img[index-1]}'),
//     );
//   }

//   Widget autoText(Map answers) {

//     if(answers == null || answers.length == 0 || answers['date'] == null){
//       return Text(
//         "Responda as questões acima e resultado será apresentado abaixo:"
//         ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),
//       );
//     }else if(DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays >= 10
//         || DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays == 0
//     ){
//       return Text(
//         "Responda as questões acima e resultado será apresentado abaixo:"
//         ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),
//       );
//     }else return RichText(
//         textAlign: TextAlign.justify,
//         text: TextSpan(
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//             text: 'Aviso: ',
//             children: <TextSpan>[
//               TextSpan(
//                   text: 'Você poderá alterar as respostas daqui a ',
//                   style: TextStyle(fontWeight: FontWeight.normal,)
//               ),
//               TextSpan(
//                 text: '${10-DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays}',
//               ),
//               TextSpan(
//                   text: ' dias.',
//                   style: TextStyle(fontWeight: FontWeight.normal,)
//               ),
//             ]
//         ),
//       );

//   }
// }