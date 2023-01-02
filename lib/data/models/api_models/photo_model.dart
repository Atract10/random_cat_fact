import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    required String url,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);

}