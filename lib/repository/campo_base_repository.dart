import 'package:app_contatos/modelo/campo_base.dart';
import 'package:app_contatos/repository/irepository.dart';
import 'package:floor/floor.dart';

@dao
abstract class CampoBaseRepositoryDAO extends IRepositoryDAO<CampoBase> {
  @Query('SELECT * CampoBase WHERE codigo = :codigo')
  Future<CampoBase> getById(int codigo);

  @Query('SELECT * FROM CampoBase')
  Future<List<CampoBase>> getAll();
}
