
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._(); // Allow adding methods to the class
  
  const factory UserModel({
    required String id,
    required String email,
    required String name,
    String? avatarUrl,
    @Default(false) bool isVerified,
  }) = _UserModel;

  // Factory constructor to create from PocketBase JSON
  factory UserModel.fromPocketBase(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      avatarUrl: json['avatar'],
      isVerified: json['verified'] ?? false,
    );
  }

  // JSON serialization
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  // Convert to domain entity
  UserEntity toEntity() => UserEntity(
    id: id,
    email: email,
    name: name,
    avatarUrl: avatarUrl,
    isVerified: isVerified,
  );
}