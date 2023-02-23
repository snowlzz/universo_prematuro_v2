// ignore_for_file: non_constant_identifier_names, body_might_complete_normally_nullable

import 'package:flutter/material.dart';


class Divisao extends StatelessWidget {
  const Divisao({super.key});






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
        children: [
          const SizedBox(height: 20.0,),
          const Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'PARTE 6 – DIVISÃO DO PRATO E GRUPOS ALIMENTAR',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40.0,),

          GCARD('Carboidrato',context,1),
          GCARD('Leguminosas',context,2),
          GCARD('Carnes e ovos',context,3),
          GCARD('Legumes',context,4),

          const SizedBox(height: 40.0,),
          const Text(
            '     As verduras iremos oferecer após bebe possuir alguma intimidade com o alimento, como: deglutindo melhor, mastigando, apresentando maior facilidade de movimentação nas refeições e mesmo assim devemos iniciar ofertando as verduras cozidas, reduzindo o risco de pequenos pedaços das folhas crus ficarem incomodando a garganta e dificultando o auxílio de uma ajuda.\n'
                '\n     Importante: É preciso verificar o local da compra e a higienização (IMAGEMabaixo) das verduras. Para evitar infeções do sistema digestório. \n',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          Image.asset('images/figg1012-28.jpeg'),

        ],
      )
    );
  }

  Widget GCARD(String title, BuildContext context, int page) {
    return InkWell(
      onTap: (){
        switch(page) {
          case 1:
            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => displayIMG(1))));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => displayIMG(2))));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => displayIMG(3))));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => displayIMG(4))));
            break;
        }
      },
      child: Card(
        elevation: 2.0,
        //margin: EdgeInsets.all(20.0),
        child: Container(
          color: const Color.fromARGB(20, 101, 188, 89),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget displayIMG(int index){
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
      body: IMGS(index),
    );
  }

  Widget? IMGS(int index){
    switch (index){
      case 1:
        return SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/figg1012-21.jpeg'),
              Image.asset('images/figg1012-1.jpeg'),
              Image.asset('images/figg1012-23.jpeg'),
              Image.asset('images/figg1012-3.jpeg'),
            ],
          ),
        );
        // break;
      case 2:
        return Image.asset('images/figg1012-4.jpeg');

        case 3:
          return SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/figg1012-9.jpeg'),
                Image.asset('images/figg1012-8.jpeg'),
                Image.asset('images/figg1012-7.jpeg'),
                Image.asset('images/figg1012-5.jpeg'),
              ],
            ),
          );
          // break;
      case 4:
        return Image.asset('images/figg1012-26.jpeg');
        // break;


    }
  }

}