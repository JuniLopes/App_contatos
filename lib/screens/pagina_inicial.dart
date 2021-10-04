import 'package:flutter/material.dart';
import 'package:tarefas_banco/database/database.dart';
import 'package:tarefas_banco/model/atividade.dart';
import 'package:tarefas_banco/screens/paginas_tarefas.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key, required this.bd}) : super(key: key);
  final BancoDeDadosApp bd;

  @override
  _PaginaInicialState createState() => _PaginaInicialState();
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
        onPressed: () async {
          var resultado = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PaginaTarefas(bd: widget.bd);
              },
            ),
          );
          if (resultado) {
            setState(() {});
          }
        },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder<List<Atividade>>(
          future: widget.bd.atividadeRepositoryDAO.getAll(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(snapshot.data![index].nome),
                          subtitle: Text(snapshot.data![index].endereco),

                          ///title: Text(snapshot.data![index].telefone), não consigo inserir uma terceira linha
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text("Sem dados cadastrados"),
                  );
          }),
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
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
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
