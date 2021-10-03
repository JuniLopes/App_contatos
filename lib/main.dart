import 'package:app_contatos/database/database.dart';
import 'package:app_contatos/telas/pagina_inicial.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    bd: await $FloorBancoDeDadosApp
        .databaseBuilder('app_database_at.bd')
        .build(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.bd}) : super(key: key);
  final BancoDeDadosApp bd;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Contatos',
      home: PaginaInicial(bd: bd),
    );
  }
}
