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
          title: const Center(child: Text('Autenticação')),
          backgroundColor: Colors.orange,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox( 
                  width: 100,
                  child: Image.asset('imagens/logo.jpg')),
                const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(labelText: 'Login: '),
                    )),
                const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Senha: '),
                    )),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      child: const Text('Autenticar'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Principal()),
                        );
                      },
                    )),
              ],
            )));
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Perfil")),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('imagens/perfil.jpg')))),
          const Expanded(
              flex: 2,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Nome:',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Leonardo Villani',
                        textDirection: TextDirection.ltr,
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' ',
                        textDirection: TextDirection.ltr,
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Posição:',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Docente',
                        textDirection: TextDirection.ltr,
                      )),
                ],
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Sair'),
              )),
        ]),
      ),
    );
  }
}
