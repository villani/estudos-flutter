import 'package:flutter/material.dart';

main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
        backgroundColor: Colors.orange,
      ),
      body: Text('Olá mundo!'),
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    ),
  ),
);