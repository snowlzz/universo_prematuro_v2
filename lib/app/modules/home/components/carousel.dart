// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomCarouselFB2 extends StatelessWidget {
  CustomCarouselFB2({Key? key}) : super(key: key);
  var borderRadius = 40;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Cartilha
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushReplacementNamed("/cartilha/");
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(6),
                  shadowColor: MaterialStateProperty.all(Colors.black),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.black.withOpacity(.5),
                    //       blurRadius: 8,
                    //       offset: const Offset(1, 0))
                    // ]
                  ),
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/BotaoUP.png", width: 100, height: 100),
                    const SizedBox(height: 05),
                    const Text(
                      "Cartilha",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/news/");
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(6),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/botaokm.png", width: 100, height: 100),
                    const SizedBox(height: 5),
                    const Text(
                      "Noticias",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/projeto/");
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(6),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/BotaoUP.png", width: 100, height: 100),
                    const SizedBox(height: 5),
                    const Text(
                      "O Projeto",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(6),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/botao bate papo.png",
                        width: 100, height: 100),
                    const SizedBox(height: 5),
                    const Text(
                      "Produções",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}