
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';


class Utensilios extends StatelessWidget {
  const Utensilios({super.key});





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
              'PARTE 3 – UTENSÍLIOS – SUGESTÃO ',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40.0,),

          GCARD('Cadeirão',context,1),
          GCARD('Colheres',context,2),
          GCARD('Pratos',context,3),
          GCARD('Copos',context,4),
          GCARD('Babador',context,5)

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
          case 5:
            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => displayIMG(5))));
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
    List<String> img = ['figg1012-19.jpeg','figg1012-15.jpeg','figg1012-14.jpeg',
      'figg1012-16.jpeg','figg1012-17.jpeg'];
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
      body: Image.asset('images/${img[index-1]}'),
    );
  }

}