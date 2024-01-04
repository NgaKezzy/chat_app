import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@CopyWith()
@JsonSerializable()
class User extends Equatable {
  final String userName;
  final String password;
  final String firstName;
  final String lastName;

  const User(
      {this.userName = '',
      this.password = '',
      this.firstName = '',
      this.lastName = ''});

  @override
  List<Object?> get props =>
      [userName, password, firstName, lastName];

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  static List<User> convertToList(List<dynamic> json) {
    //json ở đây là data
    return json.map<User>((item) => User.fromJson(item)).toList();
    // post này là từng item   ------------- post này là  để ấy vào trong fromjson trong factory rồi chuyển thành list
  }
}
