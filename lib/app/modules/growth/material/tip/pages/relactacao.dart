import 'package:flutter/material.dart';

class Relactacao extends StatelessWidget {
  const Relactacao({super.key});



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
          const SizedBox(height: 30.0,),
          const Text(
            'Oferecer o leite por meio de uma sondinha (tubo pequeno para passagem do leite)',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
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
                const SizedBox(height: 10.0,),
                const Text(
                  'Esse procedimento pode receber o nome de: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Translacta????o (Oferece apenas o leite materno)'
                          '\n\u27A2Relacta????o (Oferece outro tipo de leite, '
                          'sem ser o materno).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/figura 02.jpg'),
              ],
            ),
          ),
          content(
              'Quando utilizar:',
              'images/figura 02.jpg',
              '\u27A2Pouca produ????o de leite pela mam??e;\n\n'
                  '\u27A2Complementar a amamenta????o, atrav??s do uso de outro '
                  'tipo de leite;\n\n'
                  '\u27A2Quando a crian??a est?? com dificuldades de suc????o (puxar'
                  ' o leite materno);\n\n'
                  '\u27A2Se a crian??a estava recebendo alimenta????o por sonda via'
                  ' nasal (nariz), e esta foi retirada pelo profissional de '
                  'sa??de que acompanha a crian??a, al??m da amamenta????o, o leite '
                  'materno pode ser complementado atrav??s da relacta????o, at?? a '
                  'produ????o adequada do leite materno.'
          ),
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
                Container(
                  color: const Color.fromARGB(255, 101, 188, 89),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Como Fazer:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Image.asset('images/figura 03.jpg'),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Use um recipiente para armazenar o leite, que pode'
                          ' ser uma mamadeira pequena, seringa ou uma garrafinha'
                          ', ferva por 15 minutos, ap??s o uso;\n\n'
                          '\u27A2Utilize sonda uretral n??mero 4, que tamb??m deve'
                          ' ser fervida ap??s o uso, em torno de 15 minutos e '
                          'trocada a cada semana. Esta sonda ?? um tubo de '
                          'silicone, de pequeno calibre que pode ser encontrada '
                          'em farm??cias;\n\n'
                          '\u27A2Coloque o leite da mam??e ou outro tipo de leite'
                          ' no frasco ou seringa, ap??s ordenha da mama. A '
                          'f??rmula (leite em p??) deve ser utilizada quando a '
                          'produ????o do leite da mam??e ainda est?? baixa. Com a '
                          'suc????o (retirada do leite) da crian??a no peito, a '
                          'produ????o de leite ir?? aumentar;\n\n'
                          '\u27A2Coloque uma das pontas da sonda no fundo do '
                          'frasco ou no recipiente que for usar;\n\n'
                          '\u27A2Fixa a seringa ou frasco, com fita adesiva, na'
                          ' roupa da mam??e ou no pesco??o com um cord??o;\n\n'
                          '\u27A2A outra ponta da sonda deve ser fixada na mama,'
                          ' com uma fita adesiva, com a ponta da sonda junto do'
                          ' bico do peito; \n\n'
                          '\u27A2Colocar a crian??a no peito, ela ir?? pegar a '
                          'parte escura da mama (ar??ola) e a sonda;\n\n'
                          '\u27A2A crian??a ao retirar o leite do peito tamb??m '
                          'estar?? recebendo o leite que sai da seringa ou '
                          'frasco;\n\n'
                          '\u27A2 mam??e deve controlar o fluxo de leite durante'
                          ' as pausas que a crian??a faz para descansar. A mam??e'
                          ' deve dobrar com a m??o a sonda, e soltar quando a '
                          'crian??a voltar a retirar o leite.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                const SizedBox(height: 10.0,),
                const Text(
                  'Utilizando um frasco com conector para sonda:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images/figura 05.jpg'),
                const SizedBox(height: 10.0,),
                const Text(
                  'Utilizando um frasco com abertura voltado para cima:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images/figura 06.jpg'),
              ],
            ),
          ),
          content(
            'Vantagens', 'images/figura 04.jpg',
            '\u27A2Estimula a produ????o de leite da mam??e;\n\n'
                '\u27A2Crian??a n??o percebe o uso da sonda, facilitando a '
                'amamenta????o;\n\n'
                '\u27A2Fornece o leite sem o uso de mamadeiras, evitando a '
                'confus??o de bicos entre o bico da mamadeira e da mama;\n\n'
                '\u27A2?? mais higi??nico do que usar mamadeira;',
          ),

          const SizedBox(height: 30.0,),
          // redDoubt(context,UID),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget content(String title, String image, String text){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 101, 188, 89),
              width: 3.0
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 101, 188, 89),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
          ),
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                text,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )
            ),
          ),
        ],
      ),
    );
  }

}
