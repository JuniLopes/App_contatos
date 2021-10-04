import 'package:floor/floor.dart';
import 'package:tarefas_banco/model/entidade_base.dart';

@entity
class Atividade extends EntidadeBase {
  Atividade(
      {int? codigo,
      required String quandoFoiCriado,
      required this.nome,
      required this.endereco,
      required this.telefone})
      : super(codigo, quandoFoiCriado);

  final String nome;
  final String endereco;
  final String telefone;
}
