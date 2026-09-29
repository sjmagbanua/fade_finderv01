// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  uid: json['uid'] as String?,
  email: json['email'] as String?,
  displayName: json['displayName'] as String? ?? '',
  emailVerified: json['emailVerified'] as bool? ?? false,
  phoneNumber: json['phoneNumber'] as String?,
  photoUrl: json['photoURL'] as String?,
  idToken: json['idToken'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'displayName': instance.displayName,
  'emailVerified': instance.emailVerified,
  'phoneNumber': instance.phoneNumber,
  'photoURL': instance.photoUrl,
  'idToken': instance.idToken,
};
