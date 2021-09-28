import 'package:app_contatos/database/database.dart';
import 'package:app_contatos/telas/pagina_inicial.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp(
    bd: await $FloorBancoDeDados.databaseBuilder(app_database.bd).build(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.bd}) : super(key: key);
  final BancoDeDados bd;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Contatos',
      home: PaginaInicial(bd: bd),
    );
  }
}
