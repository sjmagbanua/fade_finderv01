// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String? uid, // Alphanumeric Firebase User ID
    String? email,
    @Default('') String displayName,
    @Default(false) bool emailVerified,
    String? phoneNumber,
    @JsonKey(name: 'photoURL') String? photoUrl,
    String? idToken,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
