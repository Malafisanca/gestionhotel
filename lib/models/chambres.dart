class Chambre {
  final String id;
  final String titre;
  final String description;
  final String imageUrl;
  final double prix;

  static var length;

  Chambre({
    required this.id,
    required this.titre,
    required this.description,
    required this.imageUrl,
    required this.prix,
  });
}