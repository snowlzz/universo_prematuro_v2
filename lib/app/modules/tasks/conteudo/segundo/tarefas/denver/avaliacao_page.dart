import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';



import '../../../components.dart';
import '../../../denver/charts/charts.dart';
import '../../segundo_store.dart';
import 'denverLG.dart';

class AvaliacaoPage extends StatefulWidget {
  final String title;
  const AvaliacaoPage({Key? key, this.title = 'Avaliação Pessoal - Social'}) : super(key: key);
  @override
  AvaliacaoPageState createState() => AvaliacaoPageState();
}
class AvaliacaoPageState extends State<AvaliacaoPage> {
  final SegundoStore store = Modular.get();
  Map? answers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Observer(builder: (_) {return Column(
          children: [
            Expanded(child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Center(child: Text(
                    "Avaliação Pessoal - Social",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  )),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset('images-dev/ps/A3 - color.jpg'),
                          DenverRadio(index: 3,text: '\nSorrir espontaneamente?',fase: "PS"),
                          Image.asset('images-dev/ps/A4 - color.jpg'),
                          DenverRadio(index: 4,text: '\nObserva sua própria mão?',fase: "PS"),
                          Image.asset('images-dev/ps/A5 - color.jpg'),
                          DenverRadio(index: 5,text: '\nTenta alcançar um brinquedo?',fase: "PS"),
                          Image.asset('images-dev/ps/A6 - color.jpg'),
                          DenverRadio(index: 6,text: '\nCome sozinho?',fase: "PS"),
                          Center(child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => DenverLGPage(),
                                )
                              );
                            },
                            child: const Text("Proxima avaliação"),
                          ),)
                      ],),
                    ),
                  )
                 
                ]),
              )
            ))
          ],
        );
  }),
    ));
  }
}