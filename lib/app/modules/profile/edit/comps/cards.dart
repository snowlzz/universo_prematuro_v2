import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/comps/inputs.dart';


import '../edit_store.dart';


class KidCard extends StatefulWidget {
  const KidCard({Key? key}) : super(key: key);

  @override
  State<KidCard> createState() => _KidCardState();
}

class _KidCardState extends State<KidCard> {
  final EditStore store = Modular.get();
  @override
  void initState() {
    store.recoverDataFromFirebase();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .90,
      height: MediaQuery.of(context).size.height * .5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 8,
              spreadRadius: 1.5,
              color: Colors.black.withOpacity(.3))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
        child: Column(children: [

          const SizedBox(height: 45),
          Observer(
            builder: (_){
            
             return nameField(
              controller: store.controllerKidName,
              //  onChanged: store.changeKidName,
              // errorText: store.validateKidName(),
              labelText: 'Nome da criança'
            
            );}
          ),

          const SizedBox(height: 25),

          Observer(
            // Function()? errorText,
            builder: (_) {
              return birthField(
                controller: store.controllerKidBirth,
                // onChanged: store.changeKidBirth,
                // errorText:  store.validateKidBirth,
                labelText: 'Nascimento',
              );
            }
            
            ),
          
          const SizedBox(height:25),

          Observer(
            builder: (_){
              return weekField(
                controller: store.controllerCorrectedAge,
                // onChanged: store.calculateCorrectedAge(correctedAge),
                // labelText: 'Idade gestacional',
                // errorText: store.validateKidWeek()
                // errorText: 
              );
            }
          ),

          
          
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Masculino",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 101, 187, 88))),
                   Observer(
                    builder: (_) {
                      return Radio(
                        value: "masculino",
                        toggleable: true,
                        groupValue: store.gender,
                        onChanged: (String? escolha){
                          store.gender = escolha;
                        }
                      );
                    }
                   ),
        
                const Text("Feminino",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 193, 143))),

                   Observer(
                    builder: (_) {
                      return Radio(
                        value: "feminino",
                          toggleable: true,
                          groupValue: store.gender,
                          onChanged: (String? escolha) {
                            store.gender = escolha!;
                          }
                      );
                    }
                   )
              ],
            ),
          )

          
        ]),
      ),
    );
  }
}

class MomCard extends StatefulWidget {
  const MomCard({super.key});

  @override
  State<MomCard> createState() => _MomCardState();
}

class _MomCardState extends State<MomCard> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .90,
      height: MediaQuery.of(context).size.height * .45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 8,
              spreadRadius: 1.5,
              color: Colors.black.withOpacity(.3))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
        child: Column(children: [
          CepInputFb2(controller: store.controllerCEP),
          PhoneInputFb2(controller: store.controllerPhone),
          // PhoneInputFb2(controller: store.controllerSecPhone),

          

          
        ]),
      ),
    );
  }
}
