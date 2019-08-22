class Cliente {
  int id_cliente;
  String nome;
  String cpf;
  String rg;
  String email;
  String celular;
  String telefone;
  String regime_casamento;
  String parceria_nome;
  String parceria_cpf;
  String parceria_rg;
  String parceria_telefone;
  String parceria_email;
  String parceria_celular;

  Cliente();

  Cliente.preenchido({this.id_cliente, this.nome, this.cpf, this.rg, this.email, this.celular, this.telefone,
  this.regime_casamento, this.parceria_nome, this.parceria_cpf, this.parceria_rg, this.parceria_telefone, this.parceria_email,
  this.parceria_celular});

  String toString(){
    return "id:_cliente: $id_cliente - nome: $nome - cpf: $cpf - rg: $rg - email: $email - celular: $celular"
        "telefone: $telefone - regime_casamento: $regime_casamento - parceria_nome: $parceria_nome - parceria_cpf: $parceria_cpf"
        "parceria_rg: $parceria_rg - parceria_telefone: $parceria_telefone - parceria_email: $parceria_email - parceria_celular: $parceria_celular";
  }

}