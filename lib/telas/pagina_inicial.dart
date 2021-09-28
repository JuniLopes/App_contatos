import 'package:app_contatos/database/database.dart';
import 'package:app_contatos/telas/add_contatos.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key, required this.bd}) : super(key: key);
  final BancoDeDados bd;

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Meus contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddContatos(
                  bd: widget.bd,
                  endereco: '',
                  nome: '',
                  telefone: '',
                );
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Center(),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'App criado por: ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('Juliana Bezerra'),
          ),
          ListTile(
            title: Text('Rubens Lopes'),
          ),
        ],
      )),
    );
  }
}
