class Visitante {
  String nome;
  String telefone;
  String cep;
  String endereco;
  String bairro;
  String complemento;
  String email;
  String idCelular;

  Visitante(
      this.nome,
      {this.telefone,
      this.cep,
      this.endereco,
      this.bairro,
      this.complemento,
      this.idCelular,
      this.email});

  Visitante.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    telefone = json['telefone'];
    cep = json['cep'];
    endereco = json['endereco'];
    bairro = json['bairro'];
    idCelular = json['idCelular'];
    complemento = json['complemento'];
    email = json['email'];
  }

   Map<String, dynamic> toJson() =>
    {
      'nome': this.nome,
      'telefone': this.telefone,
      'cep': this.cep,
      'endereco': this.endereco,
      'idCelular': this.idCelular,
      'bairro': this.bairro,
      'complemento':this.complemento,
      'email': email,
    };
}