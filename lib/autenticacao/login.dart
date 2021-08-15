import 'package:appacai/apresentacao/home/catalogo.dart';
import 'package:appacai/autenticacao/registro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(88, 44),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  final TextStyle inputStyle =
      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  final usuarioEmail = TextEditingController();
  final usuarioSenha = TextEditingController();
  String usuario = "";
  String usuarioId = "";
  _logar(String email, String senha) async {
    WidgetsFlutterBinding.ensureInitialized();
    FirebaseAuth auth = FirebaseAuth.instance;
    var firebaseUser =
        await auth.signInWithEmailAndPassword(email: email, password: senha);

    usuario = firebaseUser.email;
    usuarioId = firebaseUser.uid;
  }

  _recuperarUsuario(String id) async {
    WidgetsFlutterBinding.ensureInitialized();
    Firestore db = Firestore.instance;
    DocumentSnapshot snapshot =
        await db.collection("usuario").document(id).get();
    var dados = snapshot.data;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("nomeUsuario", dados["nome"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Point do Açaí",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 50),
                  child: Text(
                    "Autenticação",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: usuarioEmail,
                          style: inputStyle,
                          decoration: const InputDecoration(
                              hintText: 'Seu email',
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor insira um email';
                            }
                            return null;
                          },
                        ),
                        Divider(),
                        TextFormField(
                          controller: usuarioSenha,
                          style: inputStyle,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Sua Senha',
                            hintStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, insira uma senha';
                            }
                            return null;
                          },
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        style: flatButtonStyle,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registro())),
                        child: Text(
                          "Cadastre-se",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      TextButton(
                        style: flatButtonStyle,
                        onPressed: () async {
                          await _logar(usuarioEmail.text, usuarioSenha.text);
                          if (usuario == this.usuarioEmail.text) {
                            await _recuperarUsuario(usuarioId);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Catalogo()));
                          }
                        },
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
