import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Final',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Autenticacao(),
    );
  }
}

class Autenticacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Autenticacao'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const Expanded(
              child: SizedBox(
                width: 250,
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: 'Login: '),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: 250,
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: 'Senha: '),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: ElevatedButton(
                  child: const Text('Autenticar'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Principal()),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Painel de Controle"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Sair'),
        ),
      ),
    );
  }
}
