import 'package:floor/floor.dart';

class EntidadeBase {
  EntidadeBase(this.codigo, this.dataDeCriacao);

  @PrimaryKey(autoGenerate: true)
  final int? codigo;
  final String dataDeCriacao;
}
