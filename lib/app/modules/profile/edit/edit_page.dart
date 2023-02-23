import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/comps/cards.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/edit_store.dart';
import 'package:flutter/material.dart';

import '../../initial/auth/auth_store.dart';

import 'comps/photo.dart';

class EditPage extends StatefulWidget {
  final String title;
  const EditPage({Key? key, this.title = 'EditPage'}) : super(key: key);
  @override
  EditPageState createState() => EditPageState();
}

class EditPageState extends State<EditPage> {
  final EditStore store = Modular.get();
  final AuthStore aStore = Modular.get();

  @override
  void initState() {
    store.recoverDataFromFirebase();
    // aStore.recoverDataFromUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Editar Perfil',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(builder: (_, constraints) {
                  return SingleChildScrollView(
                    child: Observer(builder: (_) {
                      return Column(
                        children: [
                          const Photo(),

                          const KidCard(),
                          const PhotoMom(),
                          const MomCard(),

                          // const MomCard(),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ElevatedButton(
                              child: const Text("Salvar"),
                              onPressed: () {
                                store.saveDataToFirebase();

                                store.calculateCorrectedAge();

                                // store.calculoIdadeCrono();

                                store.searchCep();
                                store.saveCep();
                                Modular.to.pushReplacementNamed('/nav/');
                              },
                              // GradientButtonFb1(text: 'AGE', onPressed: (){store.ageCalculator(); })
                            ),
                          )
                        ],
                      );
                    }),
                  );
                }),
              )
            ],
          ),
        ));
  }
}
