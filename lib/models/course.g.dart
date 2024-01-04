// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      courseName: json['courseName'] as String? ?? '',
      imageLink: json['imageLink'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'courseName': instance.courseName,
      'imageLink': instance.imageLink,
      'price': instance.price,
    };
