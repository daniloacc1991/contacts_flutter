class Contact {
  String nombres;
  String icono;
  String url;

  Contact({this.nombres, this.icono, this.url});

  Contact.fromJson(Map<String, dynamic> json)
      : nombres = json['nombres'] as String,
        icono = json['icono'] as String,
        url = json['url'] as String;

  Map<String, dynamic> toJson() => {
        'nombres': nombres,
        'icono': icono,
        'url': url,
      };
}
