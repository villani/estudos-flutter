import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Usando Containers'),
            backgroundColor: Colors.blueAccent,
          ),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xFF8CE1F8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(5, 5),
                  blurRadius: 5,
                )
              ],
              border: Border.all(
                color: Color(0xFF51A3D6),
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )
            ),
            child: Text(
                'Este é um texto muito, muito grande, grande demais para caber em uma tela normal em uma única linha!'),
          ),
          backgroundColor: Colors.blueGrey,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
