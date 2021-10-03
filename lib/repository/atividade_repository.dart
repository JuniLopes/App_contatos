import 'package:app_contatos/model/atividade.dart';
import 'package:app_contatos/repository/irepository.dart';
import 'package:floor/floor.dart';

@dao
abstract class AtividadeRepositoryDAO extends IRepositoryDAO<Atividade> {
  @Query('SELECT * Atividade WHERE codigo = codigo')
  Future<Atividade> getById(int codigo);

  @Query('SELECT * FROM Atividade')
  Future<List<Atividade>> getAll();
}
