// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalDetailsRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalDetailsRequestImpl _$$PersonalDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalDetailsRequestImpl(
      user_id: json['user_id'] as String?,
      pan_card: json['pan_card'] as String?,
      gst_number: json['gst_number'] as String?,
      blood_group: json['blood_group'] as String?,
      gate_id: json['gate_id'] as int?,
      pf_number: json['pf_number'] as String?,
      esic_number: json['esic_number'] as String?,
      have_passport: json['have_passport'] as String?,
      passport_number: json['passport_number'] as String?,
      passport_expiry_date: json['passport_expiry_date'] == null
          ? null
          : DateTime.parse(json['passport_expiry_date'] as String),
      have_disability: json['have_disability'] as String?,
      disability_describe: json['disability_describe'] as String?,
      address: json['address'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      pincode: json['pincode'] as int?,
      emergency_contact_no: json['emergency_contact_no'] as String?,
      emergency_contact_person: json['emergency_contact_person'] as String?,
      mailing_address_diffrent: json['mailing_address_diffrent'] as String?,
    );

Map<String, dynamic> _$$PersonalDetailsRequestImplToJson(
        _$PersonalDetailsRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'pan_card': instance.pan_card,
      'gst_number': instance.gst_number,
      'blood_group': instance.blood_group,
      'gate_id': instance.gate_id,
      'pf_number': instance.pf_number,
      'esic_number': instance.esic_number,
      'have_passport': instance.have_passport,
      'passport_number': instance.passport_number,
      'passport_expiry_date': instance.passport_expiry_date?.toIso8601String(),
      'have_disability': instance.have_disability,
      'disability_describe': instance.disability_describe,
      'address': instance.address,
      'state': instance.state,
      'city': instance.city,
      'pincode': instance.pincode,
      'emergency_contact_no': instance.emergency_contact_no,
      'emergency_contact_person': instance.emergency_contact_person,
      'mailing_address_diffrent': instance.mailing_address_diffrent,
    };
