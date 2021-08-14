import 'package:appacai/autenticacao/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
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

  _registrar(String email, String senha) async {
    WidgetsFlutterBinding.ensureInitialized();
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: senha);
    } catch (erro) {
      print(erro);
    }
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
                    "Registro de Usuários",
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
                          style: inputStyle,
                          decoration: const InputDecoration(
                              hintText: 'Seu Nome',
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor insira um nome';
                            }
                            return null;
                          },
                        ),
                        Divider(),
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
                        Divider(),
                        TextFormField(
                          style: inputStyle,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Confirme sua Senha',
                            hintStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, confirme a senha';
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
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login())),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      TextButton(
                        style: flatButtonStyle,
                        onPressed: () {
                          _registrar(usuarioEmail.text, usuarioSenha.text);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "Registrar",
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
