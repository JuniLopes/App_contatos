import 'package:app_contatos/modelo/entidade_base.dart';
import 'package:floor/floor.dart';

@entity
class CampoBase extends EntidadeBase {
  CampoBase(
      {int? codigo,
      required String dataDeCriacao,
      required this.nome,
      required this.endereco,
      required this.telefone})
      : super(codigo, dataDeCriacao);

  final String nome;
  final String endereco;
  final String telefone;
}
