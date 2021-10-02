import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaTarefas extends StatelessWidget {
  const PaginaTarefas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.save),
        ),
        body: Builder(builder: (context) {
          return Column(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(labelText: "Nome"),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(labelText: "Endereço"),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(labelText: "Telefone"),
                  keyboardType: TextInputType.phone,
                  maxLength: 14,
                ),
              ),
            ],
          );
        }));
  }
}
