class User {
  final int id;
  final String name;
  final String profilImage;
  final String date;
  final String montant;
  final String moyenPaiemet;
  final String numero;
  final String numeroWhatsApp;

  User({
    required this.id,
    required this.name,
    required this.profilImage,
    required this.date,
    required this.montant,
    required this.numero,
    required this.numeroWhatsApp,
    required this.moyenPaiemet,
  });
}

class GetAuhtInfo {
  int? id;
  int? badge;
  String? name;
  String? email;
  String? prenom;
  String? numero;
  String? ville;
  String? pays;
  String? created_at;

  GetAuhtInfo({
    this.id,
    this.name,
    this.email,
    this.numero,
    this.ville,
    this.pays,
    this.badge,
    this.prenom,
    this.created_at,
  });

  // function to convert json data to user model
  factory GetAuhtInfo.fromJson(Map<String, dynamic> json) {
    return GetAuhtInfo(
      id: json['user']['id'],
      name: json['user']['nom'],
      email: json['user']['email'],
      numero: json['user']['contact'],
      pays: json['user']['pays'],
      ville: json['user']['ville'],
      badge: json['user']['badge'],
      created_at: json['user']['created_at'],
    );
  }
}
