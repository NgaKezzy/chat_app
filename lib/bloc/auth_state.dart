import 'package:chat_app/models/user.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'auth_state.g.dart';

enum AuthStatus { init, loading, success, error }

@JsonSerializable()
@CopyWith()
class AuthState extends Equatable {
  const AuthState({
    this.isLogin = false,
    this.user,
    this.status = AuthStatus.init,
  });
  final bool isLogin;
  final User? user;
  final AuthStatus status;

  @override
  List<Object?> get props => [isLogin, user, status];

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);
}
