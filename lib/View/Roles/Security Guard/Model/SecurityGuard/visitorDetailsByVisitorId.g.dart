// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visitorDetailsByVisitorId.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetVisitorDetailsByVisitorImpl _$$GetVisitorDetailsByVisitorImplFromJson(
        Map<String, dynamic> json) =>
    _$GetVisitorDetailsByVisitorImpl(
      id: json['id'] as int?,
      ticket_generate_by: json['ticket_generate_by'] as int?,
      ticket_verify_by: json['ticket_verify_by'],
      visit_ticket_number: json['visit_ticket_number'] as String?,
      visitor_name: json['visitor_name'] as String?,
      visitor_ph_number: json['visitor_ph_number'] as String?,
      purpose_of_visit: json['purpose_of_visit'] as String?,
      id_proof: json['id_proof'] as String?,
      in_out_status: json['in_out_status'] as String?,
      remarks: json['remarks'],
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
    );

Map<String, dynamic> _$$GetVisitorDetailsByVisitorImplToJson(
        _$GetVisitorDetailsByVisitorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket_generate_by': instance.ticket_generate_by,
      'ticket_verify_by': instance.ticket_verify_by,
      'visit_ticket_number': instance.visit_ticket_number,
      'visitor_name': instance.visitor_name,
      'visitor_ph_number': instance.visitor_ph_number,
      'purpose_of_visit': instance.purpose_of_visit,
      'id_proof': instance.id_proof,
      'in_out_status': instance.in_out_status,
      'remarks': instance.remarks,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
    };