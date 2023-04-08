import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeFull(),
  ));
}

class HomeFull extends StatefulWidget {
  const HomeFull({Key? key}) : super(key: key);

  @override
  State<HomeFull> createState() => _HomeFullState();
}

class _HomeFullState extends State<HomeFull> {

  int _numeroAleatorio = 0;
  final List _frases = ['O sucesso não é final, o fracasso não é fatal: é a coragem de continuar que conta.',
    'Você não pode mudar o vento, mas pode ajustar as velas do barco para chegar onde quer.',
    'Acredite em si mesmo e em tudo que você é. Saiba que há algo dentro de você que é maior do que qualquer obstáculo.',
    'Não espere por oportunidades, crie-as.', 'Não importa quantas vezes você falhar, você deve se levantar e continuar tentando.'
        'O sucesso é a soma de pequenos esforços repetidos dia após dia.', 'A maior glória em viver não está em nunca cair, mas em se levantar toda vez que caímos.'
        'Não desista, pois a força necessária para conquistar grandes vitórias vem de dentro de você.'];

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