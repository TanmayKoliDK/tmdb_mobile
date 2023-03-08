// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserDto({
    required String id,
    required String name,
    required String email,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? profileUrl,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(
        json
          ..['created_at'] =
              (json['created_at'] as Timestamp).toDate().toString()
          ..['updated_at'] =
              (json['updated_at'] as Timestamp).toDate().toString(),
      );
}
