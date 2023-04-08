import 'dart:math';

import 'package:flutter/material.dart';

class HomeFull extends StatefulWidget {
  const HomeFull({Key? key}) : super(key: key);

  @override
  State<HomeFull> createState() => _HomeFullState();
}

class _HomeFullState extends State<HomeFull> {

  int _numeroAleatorio = 0;
  final List _frases = ['O Senhor é o meu rochedo, e o meu lugar forte, e o meu libertador; o meu Deus, a minha fortaleza, em quem confio; o meu escudo, a força da minha salvação, e o meu alto refúgio. \n- Salmo 18:2',
    'Mas buscai primeiro o seu reino e a sua justiça, e todas estas coisas vos serão acrescentadas. \n- Mateus 6:33',
    'Eu sou a videira, vós sois as varas; quem está em mim, e eu nele, esse dá muito fruto; porque sem mim nada podeis fazer. \n- João 15:5',
    'Porque Deus amou o mundo de tal maneira que deu o seu Filho unigênito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna. \n- João 3:16',
        'Eu sou o caminho, e a verdade e a vida; ninguém vem ao Pai, senão por mim. \n- João 14:6',
        'Mas, buscai primeiro o reino de Deus, e a sua justiça, e todas estas coisas vos serão acrescentadas. \n- Mateus 6:33'];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _incrementCounter() {
    _numeroAleatorio = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[_numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png",
              alignment: Alignment.center,
            ),
            Text(_fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic, fontWeight: FontWeight.w300,
              color: Colors.black),
            ),

            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Nova Frase", style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Dê graças ao Senhor e proclame o Seu nome. Alegre-se \n(1 CRÔNICAS 16:8,10).