import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Adicione aqui qualquer código que precise ser executado antes da tela de splash ser exibida, como a inicialização de algum serviço ou a recuperação de dados do armazenamento local.
    // Você pode usar o método Future.delayed para simular uma operação que demora um pouco para ser concluída.
    Future.delayed(Duration(seconds: 3)).then((_) {
      // Após o tempo definido, navegue para a próxima tela.
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "images/logo.png",
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
