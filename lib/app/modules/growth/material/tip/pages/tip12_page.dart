import 'package:flutter/material.dart';

class Tip12Page extends StatefulWidget {
  final String title;
  const Tip12Page({Key? key, this.title = 'Tip12Page'}) : super(key: key);
  @override
  Tip12PageState createState() => Tip12PageState();
}
class Tip12PageState extends State<Tip12Page> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: <Widget>[
          Image.asset("images/LogoTop.png"),
          const SizedBox(
            width: 10.0,
          )
        ],
        centerTitle: true,
        title: const Text(
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 250.0,
            //height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 101, 188, 89),
                    width: 3.0
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      'A criança não deve ser colocada na posição horizontal, '
                          'evitando a troca de fraldas nesse período, para que '
                          'ela possa arrotar, em torno de 15 a 30 minutos. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Posições para arrotar:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 193, 61, 39),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Image.asset('images/IMAGEM 13.jpg'),
                const SizedBox(height: 20.0,),
                Image.asset('images/IMAGEM 14.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 30.0,),
          // redDoubt(context,UID),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}
