class Apod {
  final String explanation;
  final String photoUrl;

  Apod({required this.explanation, required this.photoUrl});

  @override
  String toString() => 'Apod(explanation: $explanation, url: $photoUrl';

  factory Apod.fromMap(Map<String, dynamic> data) {
    return Apod(explanation: data["explanation"], photoUrl: data["url"]);
  }
}
