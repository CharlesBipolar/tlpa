class Lote {
  int id_lote;
  int tamanho;
  int id_corretor;
  int id_cliente;
  String quadra;
  int lote;
  int id_empreendimento;

  Lote();

  Lote.preenchido({this.id_lote, this.tamanho, this.id_corretor, this.id_cliente, this.quadra, this.lote, this.id_empreendimento});

  String toString(){
    return "id_lote: $id_lote - tamanho: $tamanho - id_corretor: $id_corretor - id_cliente: $id_cliente - quadra: $quadra - lote: $lote - "
        "id_empreendimento: $id_empreendimento";
  }
}