import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  void responder() {
    print('Resposta 1 selecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'O que é o Flutter?',
      'Qual é a linguagem de programação usada no Flutter?',
      'O que é um Widget no Flutter?',
      'Qual é a diferença entre StatelessWidget e StatefulWidget?',
      'Como criar um novo projeto Flutter?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas.elementAt(1)),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Resposta 2 selecionada'),
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Resposta 3 selecionada');
              },
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
