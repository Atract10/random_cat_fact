import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_model.freezed.dart';
part 'fact_model.g.dart';

@freezed
class FactModel with _$FactModel {
  const factory FactModel({
    required String fact,
  }) = _FactModel;

  factory FactModel.fromJson(Map<String, dynamic> json) => _$FactModelFromJson(json);

}