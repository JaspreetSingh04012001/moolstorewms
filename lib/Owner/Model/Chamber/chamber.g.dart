// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chamber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChamberImpl _$$ChamberImplFromJson(Map<String, dynamic> json) =>
    _$ChamberImpl(
      id: (json['id'] as num?)?.toInt(),
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      chamber_number: (json['chamber_number'] as num?)?.toInt(),
      chamber_area: json['chamber_area'],
      floor_number: (json['floor_number'] as num?)?.toInt(),
      height_of_each_floor: json['height_of_each_floor'],
      temp_min_range: (json['temp_min_range'] as num?)?.toInt(),
      temp_max_range: (json['temp_max_range'] as num?)?.toInt(),
      temp_type: json['temp_type'] as String?,
      type_of_racking: json['type_of_racking'] as String?,
      capacity_meter: json['capacity_meter'],
      capacity_pallet: json['capacity_pallet'],
      pallet_dimension: json['pallet_dimension'],
      floor_area: json['floor_area'],
      staircase: json['staircase'],
      total_ante_chamber_area: json['total_ante_chamber_area'],
      ante_chamber_temp_range: json['ante_chamber_temp_range'],
      total_no_of_docks: json['total_no_of_docks'],
      total_office_space: json['total_office_space'],
      available_area_for_expansion: json['available_area_for_expansion'],
      processing_area_if_any: json['processing_area_if_any'],
      total_parking_space_available: json['total_parking_space_available'],
      type_of_docks: json['type_of_docks'],
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
      chamber_capacity: (json['chamber_capacity'] as num?)?.toInt(),
      refrigeration_type: json['refrigeration_type'] as String?,
      pallet_dimension_height:
          (json['pallet_dimension_height'] as num?)?.toInt(),
      pallet_dimension_breadth:
          (json['pallet_dimension_breadth'] as num?)?.toInt(),
      pallet_dimension_length:
          (json['pallet_dimension_length'] as num?)?.toInt(),
      movement_height: (json['movement_height'] as num?)?.toInt(),
      controlled_atmosphere: (json['controlled_atmosphere'] as num?)?.toInt(),
      humidifier: (json['humidifier'] as num?)?.toInt(),
      ozone_filteration: (json['ozone_filteration'] as num?)?.toInt(),
      chamber_length: (json['chamber_length'] as num?)?.toInt(),
      chamber_breadth: (json['chamber_breadth'] as num?)?.toInt(),
      chamber_height: (json['chamber_height'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      stacking_level: json['stacking_level'] as String?,
      pallate_count: (json['pallate_count'] as num?)?.toInt(),
      warehouse_name: json['warehouse_name'] as String?,
    );

Map<String, dynamic> _$$ChamberImplToJson(_$ChamberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'warehouse_id': instance.warehouse_id,
      'chamber_number': instance.chamber_number,
      'chamber_area': instance.chamber_area,
      'floor_number': instance.floor_number,
      'height_of_each_floor': instance.height_of_each_floor,
      'temp_min_range': instance.temp_min_range,
      'temp_max_range': instance.temp_max_range,
      'temp_type': instance.temp_type,
      'type_of_racking': instance.type_of_racking,
      'capacity_meter': instance.capacity_meter,
      'capacity_pallet': instance.capacity_pallet,
      'pallet_dimension': instance.pallet_dimension,
      'floor_area': instance.floor_area,
      'staircase': instance.staircase,
      'total_ante_chamber_area': instance.total_ante_chamber_area,
      'ante_chamber_temp_range': instance.ante_chamber_temp_range,
      'total_no_of_docks': instance.total_no_of_docks,
      'total_office_space': instance.total_office_space,
      'available_area_for_expansion': instance.available_area_for_expansion,
      'processing_area_if_any': instance.processing_area_if_any,
      'total_parking_space_available': instance.total_parking_space_available,
      'type_of_docks': instance.type_of_docks,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'chamber_capacity': instance.chamber_capacity,
      'refrigeration_type': instance.refrigeration_type,
      'pallet_dimension_height': instance.pallet_dimension_height,
      'pallet_dimension_breadth': instance.pallet_dimension_breadth,
      'pallet_dimension_length': instance.pallet_dimension_length,
      'movement_height': instance.movement_height,
      'controlled_atmosphere': instance.controlled_atmosphere,
      'humidifier': instance.humidifier,
      'ozone_filteration': instance.ozone_filteration,
      'chamber_length': instance.chamber_length,
      'chamber_breadth': instance.chamber_breadth,
      'chamber_height': instance.chamber_height,
      'user_id': instance.user_id,
      'stacking_level': instance.stacking_level,
      'pallate_count': instance.pallate_count,
      'warehouse_name': instance.warehouse_name,
    };
