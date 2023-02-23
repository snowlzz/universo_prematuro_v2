import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_prematuro_v2/app/modules/profile/edit/photo_store.dart';

import '../../initial/auth/auth_store.dart';
import '../../profile/edit/edit_store.dart';

class MomCard extends StatefulWidget {
  const MomCard({super.key});

  @override
  State<MomCard> createState() => _MomCardState();
}

class _MomCardState extends State<MomCard> {
  final EditStore store = Modular.get();
  final AuthStore aStore = Modular.get();
  final PhotoStore pStore = Modular.get();
  final EditStore eStore = Modular.get();

  @override
  void initState() {
    // pStore.recoveryMomURL;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .90,
        height: MediaQuery.of(context).size.height * .25,
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
            padding: const EdgeInsets.all(12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(builder: (_) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Observer(builder: (_) {
                            return Text('Mãe: ${aStore.controllerName.text}',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                ));
                          }),
                          const SizedBox(height: 5),
                          Observer(builder: (_) {
                            return Text(
                                'Criança: ${store.controllerKidName.text}',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                ));
                          }),
                          const SizedBox(height: 5),
                          Observer(builder: (_) {
                            return Text(
                                'Aniversário: ${store.controllerKidBirth.text}',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                ));
                          }),
                        ]);
                  }),
                  Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Observer(builder: (_) {
                        return CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(pStore.momURL),
                        );
                      }))
                ])));
  }
}
