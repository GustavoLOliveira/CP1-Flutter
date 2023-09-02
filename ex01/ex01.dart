import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meu Perfil"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Image.network(
                "https://github.com/GustavoLOliveira.png",
                height: 300,
              ),
            ),
            const Text(
              "\nNome:\nGustavo Lopes de Oliveira\n\nFormação:\nSistemas para internet - FIAP\n\nExperiência:\nDesenvolvedor Junior - BNP",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
