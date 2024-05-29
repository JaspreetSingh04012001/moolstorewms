import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@HiveType(typeId: 1)
class User with _$User {
  const factory User({
    @HiveField(0) String? first_name,
    @HiveField(5) int? role_id,
    @HiveField(6) int? id,
    @HiveField(1) String? last_name,
    @HiveField(2) String? email,
    @HiveField(3) dynamic phone,
    @HiveField(4) String? organiosationCode,
    @HiveField(7) List? person_type,
    @HiveField(8) List? warehouse,
    @HiveField(9) String? profileURl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
