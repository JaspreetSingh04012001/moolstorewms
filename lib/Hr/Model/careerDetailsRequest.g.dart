// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'careerDetailsRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerDetailsRequestImpl _$$CareerDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CareerDetailsRequestImpl(
      name_of_employer: json['name_of_employer'] as String?,
      designation: json['designation'] as String?,
      phone_no: json['phone_no'] as String?,
      employment_date_from: json['employment_date_from'] == null
          ? null
          : DateTime.parse(json['employment_date_from'] as String),
      employment_date_to: json['employment_date_to'] == null
          ? null
          : DateTime.parse(json['employment_date_to'] as String),
      monthly_salary_start: json['monthly_salary_start'] as int?,
      monthly_salary_end: json['monthly_salary_end'] as int?,
    );

Map<String, dynamic> _$$CareerDetailsRequestImplToJson(
        _$CareerDetailsRequestImpl instance) =>
    <String, dynamic>{
      'name_of_employer': instance.name_of_employer,
      'designation': instance.designation,
      'phone_no': instance.phone_no,
      'employment_date_from': instance.employment_date_from?.toIso8601String(),
      'employment_date_to': instance.employment_date_to?.toIso8601String(),
      'monthly_salary_start': instance.monthly_salary_start,
      'monthly_salary_end': instance.monthly_salary_end,
    };
