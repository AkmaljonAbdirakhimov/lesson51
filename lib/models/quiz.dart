import 'package:json_annotation/json_annotation.dart';

part 'quiz.g.dart';

@JsonSerializable()
class Quiz {
  String id;
  String question;
  List<String> options;
  int correctAnswerIndex;

  Quiz({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return _$QuizFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$QuizToJson(this);
  }
}
