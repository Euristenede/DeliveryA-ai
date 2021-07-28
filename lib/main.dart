import 'dart:io';
import 'package:appacai/inicializacao/start_material_aplication.dart';
import 'package:flutter/material.dart';
import 'inicializacao/start_cupertino_aplication.dart';

void main() {
  if (Platform.isAndroid) {
    runApp(StartMaterialAplication());
  } else if (Platform.isIOS) {
    runApp(StartCupertinoApplication());
  }
}
