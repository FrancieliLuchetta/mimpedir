import 'package:flutter/material.dart';
import 'usuario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {

    Usuario u = Usuario(
      codigo: 1,
      login: "Francieli123",
      nome: "Francieli",
      senha: "@senhaforte123"
    );

    return MaterialApp(
        home: Scaffold(
           appBar: AppBar(
              title: const Text("Meus Dados: ")
         ),
         body: Center(
           child: Padding(padding: const EdgeInsets.all(18.0),
             child: Column(
              children: [
                Text("Nome: ${u.nome} "),
                Text("Código: ${u.codigo}"),
                Text("Login: ${u.login}"),
                Text("Senha: ${u.senha}")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

