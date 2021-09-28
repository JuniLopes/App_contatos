import 'package:app_contatos/database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddContatos extends StatelessWidget {
  AddContatos(
      {Key? key,
      required this.bd,
      required String telefone,
      required String endereco,
      required String nome,
      dataDeCriacao})
      : super(key: key);
  final BancoDeDados bd;

  final nomeController = TextEditingController(text: '');
  final enderecoController = TextEditingController(text: '');
  final telefoneController = TextEditingController(text: '');
  final dataDeCriacaoController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("Adicionar contato")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (nomeController.text.isNotEmpty &&
              enderecoController.text.isNotEmpty &&
              telefoneController.text.isNotEmpty) {
            bd.campoBaseRepositoryDAO.insertItem(AddContatos(
              nome: nomeController.text,
              endereco: _enderecoController.text,
              telefone: _telefoneController.text,
              dataDeCriacao: DateTime.now().toUtc().toString(),
              bd: null,
            ));
          }
          Navigator.pop(context);
        },
        child: const Icon(Icons.save),
      ),
      body: Column(
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
      ),
    );
  }
}
