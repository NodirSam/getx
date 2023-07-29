class Joke {
  Joke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });

  final String type;
  final String setup;
  final String punchline;
  final int id;

  factory Joke.fromJson(Map<String, dynamic> json){
    return Joke(id: json["id"] ?? 0,
        type: json["type"] ?? "",
        setup: json["setup"] ?? "",
        punchline: json["punchline"] ?? ""); 
  }
}
