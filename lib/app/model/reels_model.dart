// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ReelsModel {
  String? videoUrl;
  String? username;
  String? userPic;
  String? createdAt;
  int? likeCount;
  int? commentsCount;
  ReelsModel({
    this.videoUrl,
    this.username,
    this.userPic,
    this.createdAt,
    this.likeCount,
    this.commentsCount,
  });

  ReelsModel copyWith({
    String? videoUrl,
    String? username,
    String? userPic,
    String? createdAt,
    int? likeCount,
    int? commentsCount,
  }) {
    return ReelsModel(
      videoUrl: videoUrl ?? this.videoUrl,
      username: username ?? this.username,
      userPic: userPic ?? this.userPic,
      createdAt: createdAt ?? this.createdAt,
      likeCount: likeCount ?? this.likeCount,
      commentsCount: commentsCount ?? this.commentsCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'videoUrl': videoUrl,
      'username': username,
      'userPic': userPic,
      'createdAt': createdAt,
      'likeCount': likeCount,
      'commentsCount': commentsCount,
    };
  }

  factory ReelsModel.fromMap(Map<String, dynamic> map) {
    return ReelsModel(
      videoUrl: map['videoUrl'] != null ? map['videoUrl'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      userPic: map['userPic'] != null ? map['userPic'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      likeCount: map['likeCount'] != null ? map['likeCount'] as int : null,
      commentsCount: map['commentsCount'] != null ? map['commentsCount'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReelsModel.fromJson(String source) => ReelsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReelsModel(videoUrl: $videoUrl, username: $username, userPic: $userPic, createdAt: $createdAt, likeCount: $likeCount, commentsCount: $commentsCount)';
  }

  @override
  bool operator ==(covariant ReelsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.videoUrl == videoUrl &&
      other.username == username &&
      other.userPic == userPic &&
      other.createdAt == createdAt &&
      other.likeCount == likeCount &&
      other.commentsCount == commentsCount;
  }

  @override
  int get hashCode {
    return videoUrl.hashCode ^
      username.hashCode ^
      userPic.hashCode ^
      createdAt.hashCode ^
      likeCount.hashCode ^
      commentsCount.hashCode;
  }
}
