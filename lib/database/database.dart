import 'package:app_contatos/modelo/campo_base.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [CampoBase])
abstract class BancoDeDados extends FloorDatabase {}
