import 'dart:convert';

class ModelItems{
 
  static List<MoviesItems> moviesItemsList = [];
  
}
class MoviesItems {
  int id;
  String original_title;
  String overview;
  String poster_path;
  String title;

  MoviesItems({
    required this.id,
    required this.original_title,
    required this.overview,
    required this.poster_path,
    required this.title,
  });

  

  MoviesItems copyWith({
    int? id,
    String? original_title,
    String? overview,
    String? poster_path,
    String? title,
  }) {
    return MoviesItems(
      id: id ?? this.id,
      original_title: original_title ?? this.original_title,
      overview: overview ?? this.overview,
      poster_path: poster_path ?? this.poster_path,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'original_title': original_title,
      'overview': overview,
      'poster_path': poster_path,
      'title': title,
    };
  }

  factory MoviesItems.fromMap(Map<String, dynamic> map) {
    return MoviesItems(
      id: map['id'] as int,
      original_title: map['original_title'] as String,
      overview: map['overview'] as String,
      poster_path: map['poster_path'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoviesItems.fromJson(String source) => MoviesItems.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MoviesItems(id: $id, original_title: $original_title, overview: $overview, poster_path: $poster_path, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MoviesItems &&
      other.id == id &&
      other.original_title == original_title &&
      other.overview == overview &&
      other.poster_path == poster_path &&
      other.title == title;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      original_title.hashCode ^
      overview.hashCode ^
      poster_path.hashCode ^
      title.hashCode;
  }
}
