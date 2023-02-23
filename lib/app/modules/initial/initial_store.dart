// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../models/user_model.dart';

part 'initial_store.g.dart';

class InitialStore = _InitialStoreBase with _$InitialStore;
abstract class _InitialStoreBase with Store {

  FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel user = UserModel();

  @observable
  TextEditingController controllerEmail = TextEditingController(); 

  @observable 
  TextEditingController controllerPass = TextEditingController();

  @observable
  bool loading = false;

  @observable
  String? idLogado;

  @observable
  String erro = "";


  @action
  Future<void> signIn({String? email, String? pass}) async {
    loading = true;
    // User? usuarioLogado = _auth.currentUser!;
    idLogado = _auth.currentUser?.uid;

    email = controllerEmail.text;
    pass = controllerPass.text;

    try{
      user.email = email;
      user.pass = pass;

      await _auth.signInWithEmailAndPassword(email: email, password: pass).then((firebaseUser) async {
        // if(usuarioLogado == _auth.currentUser) loading = false;
        loading = false;
        Modular.to.pushReplacementNamed('/nav/');
      });

    } on FirebaseAuthException catch (e) {
        loading = false;
        switch (e.code) {
          case "invalid-email":
            erro = "E-mail inválido, por favor verifique.";
            break;
          case "wrong-password":
            erro = "Senha incorreta.";
            break;
          case "user-not-found":
            erro = "E-mail não cadastrado";
            break;
          case "user-disabled":
            erro = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            erro = "Too many requests. Try again later.";
            break;
          case "operation-not-allowed":
            erro = "Signing in with Email and Password is not enabled.";
            break;
          default:
            erro = "An undefined Error happened.";
        }
        print(erro);
      }

  }
}