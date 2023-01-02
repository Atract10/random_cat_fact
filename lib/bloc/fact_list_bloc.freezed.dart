// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
    required TResult Function(int indexInList) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
    TResult? Function(int indexInList)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    TResult Function(int indexInList)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetupFactListEvent value) setup,
    required TResult Function(_DeleteFactListEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetupFactListEvent value)? setup,
    TResult? Function(_DeleteFactListEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetupFactListEvent value)? setup,
    TResult Function(_DeleteFactListEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactListEventCopyWith<$Res> {
  factory $FactListEventCopyWith(
          FactListEvent value, $Res Function(FactListEvent) then) =
      _$FactListEventCopyWithImpl<$Res, FactListEvent>;
}

/// @nodoc
class _$FactListEventCopyWithImpl<$Res, $Val extends FactListEvent>
    implements $FactListEventCopyWith<$Res> {
  _$FactListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetupFactListEventCopyWith<$Res> {
  factory _$$_SetupFactListEventCopyWith(_$_SetupFactListEvent value,
          $Res Function(_$_SetupFactListEvent) then) =
      __$$_SetupFactListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetupFactListEventCopyWithImpl<$Res>
    extends _$FactListEventCopyWithImpl<$Res, _$_SetupFactListEvent>
    implements _$$_SetupFactListEventCopyWith<$Res> {
  __$$_SetupFactListEventCopyWithImpl(
      _$_SetupFactListEvent _value, $Res Function(_$_SetupFactListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetupFactListEvent extends _SetupFactListEvent {
  const _$_SetupFactListEvent() : super._();

  @override
  String toString() {
    return 'FactListEvent.setup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetupFactListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
    required TResult Function(int indexInList) delete,
  }) {
    return setup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
    TResult? Function(int indexInList)? delete,
  }) {
    return setup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    TResult Function(int indexInList)? delete,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetupFactListEvent value) setup,
    required TResult Function(_DeleteFactListEvent value) delete,
  }) {
    return setup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetupFactListEvent value)? setup,
    TResult? Function(_DeleteFactListEvent value)? delete,
  }) {
    return setup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetupFactListEvent value)? setup,
    TResult Function(_DeleteFactListEvent value)? delete,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class _SetupFactListEvent extends FactListEvent {
  const factory _SetupFactListEvent() = _$_SetupFactListEvent;
  const _SetupFactListEvent._() : super._();
}

/// @nodoc
abstract class _$$_DeleteFactListEventCopyWith<$Res> {
  factory _$$_DeleteFactListEventCopyWith(_$_DeleteFactListEvent value,
          $Res Function(_$_DeleteFactListEvent) then) =
      __$$_DeleteFactListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int indexInList});
}

/// @nodoc
class __$$_DeleteFactListEventCopyWithImpl<$Res>
    extends _$FactListEventCopyWithImpl<$Res, _$_DeleteFactListEvent>
    implements _$$_DeleteFactListEventCopyWith<$Res> {
  __$$_DeleteFactListEventCopyWithImpl(_$_DeleteFactListEvent _value,
      $Res Function(_$_DeleteFactListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexInList = null,
  }) {
    return _then(_$_DeleteFactListEvent(
      indexInList: null == indexInList
          ? _value.indexInList
          : indexInList // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteFactListEvent extends _DeleteFactListEvent {
  const _$_DeleteFactListEvent({required this.indexInList}) : super._();

  @override
  final int indexInList;

  @override
  String toString() {
    return 'FactListEvent.delete(indexInList: $indexInList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFactListEvent &&
            (identical(other.indexInList, indexInList) ||
                other.indexInList == indexInList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexInList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFactListEventCopyWith<_$_DeleteFactListEvent> get copyWith =>
      __$$_DeleteFactListEventCopyWithImpl<_$_DeleteFactListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
    required TResult Function(int indexInList) delete,
  }) {
    return delete(indexInList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
    TResult? Function(int indexInList)? delete,
  }) {
    return delete?.call(indexInList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    TResult Function(int indexInList)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(indexInList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetupFactListEvent value) setup,
    required TResult Function(_DeleteFactListEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetupFactListEvent value)? setup,
    TResult? Function(_DeleteFactListEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetupFactListEvent value)? setup,
    TResult Function(_DeleteFactListEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteFactListEvent extends FactListEvent {
  const factory _DeleteFactListEvent({required final int indexInList}) =
      _$_DeleteFactListEvent;
  const _DeleteFactListEvent._() : super._();

  int get indexInList;
  @JsonKey(ignore: true)
  _$$_DeleteFactListEventCopyWith<_$_DeleteFactListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FactListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fact> factsList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fact> factsList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fact> factsList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingFactListState value) loading,
    required TResult Function(_LoadedFactListState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingFactListState value)? loading,
    TResult? Function(_LoadedFactListState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingFactListState value)? loading,
    TResult Function(_LoadedFactListState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactListStateCopyWith<$Res> {
  factory $FactListStateCopyWith(
          FactListState value, $Res Function(FactListState) then) =
      _$FactListStateCopyWithImpl<$Res, FactListState>;
}

/// @nodoc
class _$FactListStateCopyWithImpl<$Res, $Val extends FactListState>
    implements $FactListStateCopyWith<$Res> {
  _$FactListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingFactListStateCopyWith<$Res> {
  factory _$$_LoadingFactListStateCopyWith(_$_LoadingFactListState value,
          $Res Function(_$_LoadingFactListState) then) =
      __$$_LoadingFactListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingFactListStateCopyWithImpl<$Res>
    extends _$FactListStateCopyWithImpl<$Res, _$_LoadingFactListState>
    implements _$$_LoadingFactListStateCopyWith<$Res> {
  __$$_LoadingFactListStateCopyWithImpl(_$_LoadingFactListState _value,
      $Res Function(_$_LoadingFactListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingFactListState extends _LoadingFactListState {
  const _$_LoadingFactListState() : super._();

  @override
  String toString() {
    return 'FactListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingFactListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fact> factsList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fact> factsList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fact> factsList)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingFactListState value) loading,
    required TResult Function(_LoadedFactListState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingFactListState value)? loading,
    TResult? Function(_LoadedFactListState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingFactListState value)? loading,
    TResult Function(_LoadedFactListState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingFactListState extends FactListState {
  const factory _LoadingFactListState() = _$_LoadingFactListState;
  const _LoadingFactListState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedFactListStateCopyWith<$Res> {
  factory _$$_LoadedFactListStateCopyWith(_$_LoadedFactListState value,
          $Res Function(_$_LoadedFactListState) then) =
      __$$_LoadedFactListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Fact> factsList});
}

/// @nodoc
class __$$_LoadedFactListStateCopyWithImpl<$Res>
    extends _$FactListStateCopyWithImpl<$Res, _$_LoadedFactListState>
    implements _$$_LoadedFactListStateCopyWith<$Res> {
  __$$_LoadedFactListStateCopyWithImpl(_$_LoadedFactListState _value,
      $Res Function(_$_LoadedFactListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factsList = null,
  }) {
    return _then(_$_LoadedFactListState(
      factsList: null == factsList
          ? _value._factsList
          : factsList // ignore: cast_nullable_to_non_nullable
              as List<Fact>,
    ));
  }
}

/// @nodoc

class _$_LoadedFactListState extends _LoadedFactListState {
  const _$_LoadedFactListState({required final List<Fact> factsList})
      : _factsList = factsList,
        super._();

  final List<Fact> _factsList;
  @override
  List<Fact> get factsList {
    if (_factsList is EqualUnmodifiableListView) return _factsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_factsList);
  }

  @override
  String toString() {
    return 'FactListState.loaded(factsList: $factsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedFactListState &&
            const DeepCollectionEquality()
                .equals(other._factsList, _factsList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_factsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedFactListStateCopyWith<_$_LoadedFactListState> get copyWith =>
      __$$_LoadedFactListStateCopyWithImpl<_$_LoadedFactListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Fact> factsList) loaded,
  }) {
    return loaded(factsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Fact> factsList)? loaded,
  }) {
    return loaded?.call(factsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Fact> factsList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(factsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingFactListState value) loading,
    required TResult Function(_LoadedFactListState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingFactListState value)? loading,
    TResult? Function(_LoadedFactListState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingFactListState value)? loading,
    TResult Function(_LoadedFactListState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedFactListState extends FactListState {
  const factory _LoadedFactListState({required final List<Fact> factsList}) =
      _$_LoadedFactListState;
  const _LoadedFactListState._() : super._();

  List<Fact> get factsList;
  @JsonKey(ignore: true)
  _$$_LoadedFactListStateCopyWith<_$_LoadedFactListState> get copyWith =>
      throw _privateConstructorUsedError;
}
