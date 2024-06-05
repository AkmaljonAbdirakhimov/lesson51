import 'package:json_annotation/json_annotation.dart';
import 'package:lesson51/models/lesson.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  String id;
  String title;
  String description;
  List<Lesson> lessons;
  double price;
  String imageUrl;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.lessons,
    required this.imageUrl,
    required this.price,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return _$CourseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CourseToJson(this);
  }
}
