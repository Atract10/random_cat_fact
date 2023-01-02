// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FactModel _$FactModelFromJson(Map<String, dynamic> json) {
  return _FactModel.fromJson(json);
}

/// @nodoc
mixin _$FactModel {
  String get fact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactModelCopyWith<FactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactModelCopyWith<$Res> {
  factory $FactModelCopyWith(FactModel value, $Res Function(FactModel) then) =
      _$FactModelCopyWithImpl<$Res, FactModel>;
  @useResult
  $Res call({String fact});
}

/// @nodoc
class _$FactModelCopyWithImpl<$Res, $Val extends FactModel>
    implements $FactModelCopyWith<$Res> {
  _$FactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
  }) {
    return _then(_value.copyWith(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FactModelCopyWith<$Res> implements $FactModelCopyWith<$Res> {
  factory _$$_FactModelCopyWith(
          _$_FactModel value, $Res Function(_$_FactModel) then) =
      __$$_FactModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fact});
}

/// @nodoc
class __$$_FactModelCopyWithImpl<$Res>
    extends _$FactModelCopyWithImpl<$Res, _$_FactModel>
    implements _$$_FactModelCopyWith<$Res> {
  __$$_FactModelCopyWithImpl(
      _$_FactModel _value, $Res Function(_$_FactModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
  }) {
    return _then(_$_FactModel(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FactModel with DiagnosticableTreeMixin implements _FactModel {
  const _$_FactModel({required this.fact});

  factory _$_FactModel.fromJson(Map<String, dynamic> json) =>
      _$$_FactModelFromJson(json);

  @override
  final String fact;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FactModel(fact: $fact)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FactModel'))
      ..add(DiagnosticsProperty('fact', fact));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FactModel &&
            (identical(other.fact, fact) || other.fact == fact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FactModelCopyWith<_$_FactModel> get copyWith =>
      __$$_FactModelCopyWithImpl<_$_FactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FactModelToJson(
      this,
    );
  }
}

abstract class _FactModel implements FactModel {
  const factory _FactModel({required final String fact}) = _$_FactModel;

  factory _FactModel.fromJson(Map<String, dynamic> json) =
      _$_FactModel.fromJson;

  @override
  String get fact;
  @override
  @JsonKey(ignore: true)
  _$$_FactModelCopyWith<_$_FactModel> get copyWith =>
      throw _privateConstructorUsedError;
}
