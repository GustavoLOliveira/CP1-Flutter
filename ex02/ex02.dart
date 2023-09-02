import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorDePessoas(),
    );
  }
}

class ContadorDePessoas extends StatefulWidget {
  const ContadorDePessoas({super.key});

  @override
  _ContadorDePessoasState createState() => _ContadorDePessoasState();
}

class _ContadorDePessoasState extends State<ContadorDePessoas> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    if (contador > 0) {
      setState(() {
        contador--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de Pessoas"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Número de Pessoas:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$contador",
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: incrementar,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(Icons.add, size: 40),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decrementar,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(Icons.remove, size: 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
