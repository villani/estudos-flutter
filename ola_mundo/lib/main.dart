import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Usando Containers'),
            backgroundColor: Colors.blueAccent,
          ),
          body: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
                ),
              ),
              Positioned(
                right: 50,
                top: 200,
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.blueGrey,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
