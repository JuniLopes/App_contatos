import 'package:app_contatos/modelo/entidade_base.dart';
import 'package:floor/floor.dart';

abstract class IRepositoryDAO<Model extends EntidadeBase> {
  @insert
  Future<int> insertItem(Model item);

  @update
  Future<int> updateItem(Model item);

  @delete
  Future<int> deleteItem(Model item);
}
