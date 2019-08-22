class Empreendimento {
  int id_Empreendimento;
  int vendido;
  String nome;
  String tipologia;
  int cnpj;
  String mapa;

  Empreendimento();

  Empreendimento.preenchido({this.id_Empreendimento, this.vendido, this.nome, this.tipologia, this.cnpj, this.mapa});

  String toString(){
    return "id: $id_Empreendimento - vendido: $vendido - nome: $nome - tipologia: $tipologia - cnpj: $cnpj - mapa: $mapa";
  }
}