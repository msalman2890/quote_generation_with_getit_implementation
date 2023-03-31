/// sentence : "When people have different opinions, you should apply the majority vote."
/// character : "Naruto Uzumaki"
/// anime : "Naruto"

class Quote {
  Quote({
    String? sentence,
    String? character,
    String? anime,
  }) {
    _sentence = sentence;
    _character = character;
    _anime = anime;
  }

  Quote.fromJson(dynamic json) {
    _sentence = json['sentence'];
    _character = json['character'];
    _anime = json['anime'];
  }

  String? _sentence;
  String? _character;
  String? _anime;

  Quote copyWith({
    String? sentence,
    String? character,
    String? anime,
  }) =>
      Quote(
        sentence: sentence ?? _sentence,
        character: character ?? _character,
        anime: anime ?? _anime,
      );

  String? get sentence => _sentence;

  String? get character => _character;

  String? get anime => _anime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sentence'] = _sentence;
    map['character'] = _character;
    map['anime'] = _anime;
    return map;
  }
}
