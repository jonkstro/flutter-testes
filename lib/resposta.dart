// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _resposta;
  const Resposta(this._resposta, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          print("Apertei no botao " + _resposta);
        },
        style: ButtonStyle(
          // // Cor do botão
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(129, 87, 4, 115)),
          // Cor do ícone e do texto
          foregroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 242, 242, 244)),
          // Cor de realce quando pressionado
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Row(
          children: [
            Icon(Icons.add, color: Color.fromARGB(255, 242, 242, 244)), // Ícone
            // Text('Botão com Ícone'),
            // Aqui vai ficar o texto no meio e o icone no começo
            Expanded(
              child: Center(
                child: Text('Botão com Ícone'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
