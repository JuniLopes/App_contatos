import 'package:flutter/material.dart';
import 'package:tarefas_banco/database/database.dart';
import 'package:tarefas_banco/model/atividade.dart';

class PaginaTarefas extends StatelessWidget {
  PaginaTarefas({Key? key, required this.bd}) : super(key: key);
  final BancoDeDadosApp bd;

  final _nomeController = TextEditingController(text: '');
  final _enderecoController = TextEditingController(text: '');
  final _telefoneController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Novo contato"),
          backgroundColor: Colors.blueAccent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_nomeController.text.isNotEmpty &&
                _enderecoController.text.isNotEmpty &&
                _telefoneController.text.isNotEmpty) {
              bd.atividadeRepositoryDAO.insertItem(Atividade(
                nome: _nomeController.text,
                endereco: _enderecoController.text,
                telefone: _telefoneController.text,
                //telefone: _telefoneController.text,
                quandoFoiCriado: DateTime.now().toUtc().toString(),
              ));
            }
            Navigator.pop(context, true);
          },
          child: const Icon(Icons.save),
        ),
        body: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _nomeController,
                  decoration: const InputDecoration(labelText: "Nome"),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _enderecoController,
                  decoration: const InputDecoration(labelText: "Endereço"),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _telefoneController,
                  decoration: const InputDecoration(labelText: "Telefone"),
                  keyboardType: TextInputType.phone,
                  maxLength: 14,
                ),
              ),
            ],
          );
        }));
  }
}
