class Beacon {
  String tipoConteudo;
  String local;
  String idBeacon;
  String conteudo;
  String legenda;
  String createdAt;
  String updatedAt;
  String id;

  Beacon.fromJson(Map<String, dynamic> json) {
    tipoConteudo = json['tipoConteudo'];
    local = json['local'];
    idBeacon = json['idBeacon'];
    conteudo = json['conteudo'];
    legenda = json['legenda'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }
  Map<String, dynamic> toJson() => {
      'tipoConteudo': this.tipoConteudo,
      'local': this.local,
      'idBeacon': this.idBeacon,
      'conteudo': this.conteudo,
      'legenda': this.legenda,
      'createdAt':this.createdAt,
      'updatedAt': this.updatedAt,
      'id': this.id,
    };
}
