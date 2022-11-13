class Contact {
  Contact(
      {required this.name,
      required this.number,
      this.picture,
      this.isFavorite = false});

  final String name;
  final String number;
  final String? picture;
  bool isFavorite;
}
