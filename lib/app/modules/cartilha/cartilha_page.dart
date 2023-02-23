import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class CartilhaPage extends StatefulWidget {
  final String title;
  const CartilhaPage({Key? key, this.title = 'Cartilha'}) : super(key: key);
  @override
  CartilhaPageState createState() => CartilhaPageState();
}
class CartilhaPageState extends State<CartilhaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cartilha"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 158, 104),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          onPressed: (){
             Modular.to.popAndPushNamed("/nav/");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Image.asset('images/cartilha/0001.jpg',),
          Image.asset('images/cartilha/0002.jpg',),
          Image.asset('images/cartilha/0003.jpg',),
          Image.asset('images/cartilha/0004.jpg',),
          Image.asset('images/cartilha/0005.jpg',),
          Image.asset('images/cartilha/0006.jpg',),
          Image.asset('images/cartilha/0007.jpg',),
          Image.asset('images/cartilha/0008.jpg',),
          Image.asset('images/cartilha/0009.jpg',),
          Image.asset('images/cartilha/0010.jpg',),
          Image.asset('images/cartilha/0011.jpg',),
          Image.asset('images/cartilha/0012.jpg',),
          Image.asset('images/cartilha/0013.jpg',),
          Image.asset('images/cartilha/0014.jpg',),
          Image.asset('images/cartilha/0015.jpg',),
          Image.asset('images/cartilha/0016.jpg',),
          Image.asset('images/cartilha/0017.jpg',),
          Image.asset('images/cartilha/0018.jpg',),
          Image.asset('images/cartilha/0019.jpg',),
          Image.asset('images/cartilha/0020.jpg',),
          Image.asset('images/cartilha/0021.jpg',),
          Image.asset('images/cartilha/0022.jpg',),
          Image.asset('images/cartilha/0023.jpg',),
          Image.asset('images/cartilha/0024.jpg',),
          Image.asset('images/cartilha/0025.jpg',),
          Image.asset('images/cartilha/0026.jpg',),
          Image.asset('images/cartilha/0027.jpg',),
          Image.asset('images/cartilha/0028.jpg',),
          Image.asset('images/cartilha/0029.jpg',),
          Image.asset('images/cartilha/0030.jpg',),
          Image.asset('images/cartilha/0031.jpg',),
          Image.asset('images/cartilha/0032.jpg',),
          Image.asset('images/cartilha/0033.jpg',),
          Image.asset('images/cartilha/0034.jpg',),
          Image.asset('images/cartilha/0035.jpg',),
          Image.asset('images/cartilha/0036.jpg',),
          ],
        ),
      ),
    );
  }
}