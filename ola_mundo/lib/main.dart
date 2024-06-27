import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Widgets de interface'),
            backgroundColor: Colors.blueAccent,
          ),
          body: const Center(
            child: Text(
              'Flutter é simples',
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ),
    );
