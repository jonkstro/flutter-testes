// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:curso/questao.dart';
import 'package:curso/resposta.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffoldApp(),
    );
  }
}

class MyScaffoldApp extends StatelessWidget {
  int _qtd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App Flutter'),
      ),
      body: Center(
        child: Center(
            child: Column(
          children: [
            Questao('Bem-vindo ao meu aplicativo Flutter!'),
            Resposta("Resposta 1"),
            Resposta("Resposta 2"),
            Resposta("Resposta 3"),
            // ElevatedButton(
            //   onPressed: () {
            //     // write your onPressed function here
            //     print('Button Pressed');
            //   },
            //   child: Text('Press Me'),
            // ),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Adicione ação ao botão Flutuante aqui
          _qtd++;
          print("Apertado " + _qtd.toString() + " vezes");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
