import 'package:json_annotation/json_annotation.dart';
part 'course.g.dart';

@JsonSerializable()
class Course {
  final String courseName;
  final String imageLink;
  final double price;
  const Course({
    this.courseName = '',
    this.imageLink = '',
    this.price = 0,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}
