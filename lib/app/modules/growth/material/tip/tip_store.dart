// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

import '../../../models/task_model.dart';

part 'tip_store.g.dart';

class TipStore = _TipStoreBase with _$TipStore;
abstract class _TipStoreBase with Store {
  Future updateQSTN (bool ans, String opt, Task tsk) async {
    String? S = tsk.status;
    if(ans == true) {
      if(S!.contains('I')){
        S = S.replaceAll('I', '');
      }
      S = S + opt;
    } else {
      S = S!.replaceAll(opt, '');
      if(S == '') S = '${S}I';
    }
    tsk.status = S;
    // print(tsk.status);


    await FirebaseFirestore.instance.collection("users").doc(tsk.user)
        .collection('Tasks').doc(tsk.task).set(
        {
          'DateTime':Timestamp.now(),
          'Answer':S
        }, SetOptions(merge: true)
    );
  }

}