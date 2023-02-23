import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';

// import '../profile/edit/edit_store.dart';
import 'components/buttons.dart';
import 'components/inputs.dart';
import 'initial_store.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key? key, this.title = 'InitialPage'}) : super(key: key);
  @override
  InitialPageState createState() => InitialPageState();
}

class InitialPageState extends State<InitialPage> {
  final InitialStore store = Modular.get();
  // final EditStore eStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        leading: null,
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 193, 143),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(builder: (_, constraints) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset("images/LogoMov.gif"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: EmailInputField(
                          inputController: store.controllerEmail,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PasswordInput(
                          inputController: store.controllerPass,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Observer(builder: (_) {
                        return Text(
                          store.erro,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        );
                      }),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          store.signIn();
                          // eStore.recoverDataFromFirebase();
                        },
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size.fromWidth(200)),
                        ),
                        child: const Text("Entrar", style: TextStyle(
                          color: Colors.green
                        ),),
                      ),
                      OutlineButtonFb1(
                        onPressed: () {
                          Modular.to.pushReplacementNamed('/auth');
                        },
                        text: "Primeira vez no Universo Prematuro?",
                      )
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
