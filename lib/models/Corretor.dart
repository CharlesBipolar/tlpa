class Corretor{
  int id_corretor;
  String nome;
  String cpf;
  String creci;
  String celular;
  String imobiliaria;
  String rg;
  int status;

  Corretor();

  Corretor.preenchido({this.id_corretor, this.nome, this.cpf, this.creci, this.celular, this.imobiliaria, this.rg, this.status});

  String toString(){
    return"id: $id_corretor - nome: $nome - cpf: $cpf - creci: $creci -"
        " celular: $celular - imobiliaria: $imobiliaria - "
        "rg: $imobiliaria - rg: $rg - status: $status ";
  }
}