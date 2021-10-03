import 'package:app_contatos/model/entidade_base.dart';
import 'package:floor/floor.dart';

@entity
class Atividade extends EntidadeBase {
  Atividade({
    int? codigo,
    required String quandoFoiCriado,
    required this.nome,
    required this.endereco,
    //required this.telefone
  }) : super(codigo, quandoFoiCriado);

  final String nome;
  final String endereco;
  //final String telefone;
}
