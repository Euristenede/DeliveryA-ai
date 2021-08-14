// @dart=2.9
import 'dart:io';
import 'package:appacai/inicializacao/start_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'inicializacao/start_logado.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseAuth auth = FirebaseAuth.instance;
  //auth.signOut();
  FirebaseUser usuarioAtual = await auth.currentUser();

  if (usuarioAtual != null) {
    runApp(StartLogado());
  } else {
    runApp(StartLogin());
  }
}
