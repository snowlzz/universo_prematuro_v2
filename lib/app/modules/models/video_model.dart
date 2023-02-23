// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class Video {
  String? id;
  final String? title;
  final String? thumbnailUrl;
  final String? channelTitle;
  
  Video({
  this.id,
  this.title,
  this.thumbnailUrl,
  this.channelTitle,
  });

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['resourceId']['videoUrl'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channelTitle: snippet['channelTitle']
    );
  }

  Video copyWith({
    String? id,
    String? title,
    String? thumbnailUrl,
    String? channelTitle,
  }) {
    return Video(
      id: id ?? this.id,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      channelTitle: channelTitle ?? this.channelTitle,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'thumbnailUrl': thumbnailUrl,
      'channelTitle': channelTitle,
    };
  }

  // factory Video.fromMap(Map<String, dynamic> map) {
  //   return Video(
  //     id: map['id'] != null ? map['id'] as String : null,
  //     title: map['title'] != null ? map['title'] as String : null,
  //     thumbnailUrl: map['thumbnailUrl'] != null ? map['thumbnailUrl'] as String : null,
  //     channelTitle: map['channelTitle'] != null ? map['channelTitle'] as String : null,
  //   );
  // }

  String toJson() => json.encode(toMap());

  factory Video.fromJson(String source) => Video.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Video(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, channelTitle: $channelTitle)';
  }

  @override
  bool operator ==(covariant Video other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.thumbnailUrl == thumbnailUrl &&
      other.channelTitle == channelTitle;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      thumbnailUrl.hashCode ^
      channelTitle.hashCode;
  }
}
