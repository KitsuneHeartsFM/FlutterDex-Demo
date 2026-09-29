class Pokemon {
  final int id;
  final String name;
  final String image;
  final String entry;

  const Pokemon({
    required this.id,
    required this.name,
    required this.image,
    required this.entry,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      entry: json["entry"],
    );
  }
}
