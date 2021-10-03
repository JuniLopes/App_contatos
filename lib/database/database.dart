import 'dart:async';

import 'package:app_contatos/model/atividade.dart';
import 'package:app_contatos/repository/atividade_repository.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [Atividade])
abstract class BancoDeDadosApp extends FloorDatabase {
  AtividadeRepositoryDAO get atividadeRepositoryDAO;
}
