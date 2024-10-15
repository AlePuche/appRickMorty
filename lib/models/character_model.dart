class Character {
  final int id;
  final String name;
  final String species;
  final String image;
  final String status;
  final String location;

  Character({
    required this.id,
    required this.name,
    required this.species,
    required this.image,
    required this.status,
    required this.location,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      species: json['species'],
      image: json['image'],
      status: json['status'],
      location: json['location']['name'],
    );
  }
}

