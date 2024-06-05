import 'package:json_annotation/json_annotation.dart';
import 'package:lesson51/models/quiz.dart';

part 'lesson.g.dart';

@JsonSerializable()
class Lesson {
  String id;
  String title;
  String videoUrl;
  List<Quiz> quizes;
  String description;

  Lesson({
    required this.id,
    required this.title,
    required this.videoUrl,
    required this.quizes,
    required this.description,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return _$LessonFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LessonToJson(this);
  }
}
