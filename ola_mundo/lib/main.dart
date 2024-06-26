import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Meu App'),
            backgroundColor: Colors.orange,
          ),
          body: Row(
            children: [
              Expanded(flex: 2, child: Icon(Icons.shopping_cart)),
              Expanded(flex: 2, child: Icon(Icons.vpn_lock)),
              Expanded(flex: 2, child: Icon(Icons.restaurant)),
              Expanded(flex: 10, child: Icon(Icons.tablet_mac)),
              Expanded(flex: 1, child: Icon(Icons.cloud)),
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
