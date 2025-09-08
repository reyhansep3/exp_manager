// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lighting_mode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LightingModeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lightMode,
    required TResult Function() darkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lightMode,
    TResult? Function()? darkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lightMode,
    TResult Function()? darkMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LightMode value) lightMode,
    required TResult Function(_DarkMode value) darkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LightMode value)? lightMode,
    TResult? Function(_DarkMode value)? darkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LightMode value)? lightMode,
    TResult Function(_DarkMode value)? darkMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LightingModeStateCopyWith<$Res> {
  factory $LightingModeStateCopyWith(
          LightingModeState value, $Res Function(LightingModeState) then) =
      _$LightingModeStateCopyWithImpl<$Res, LightingModeState>;
}

/// @nodoc
class _$LightingModeStateCopyWithImpl<$Res, $Val extends LightingModeState>
    implements $LightingModeStateCopyWith<$Res> {
  _$LightingModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LightingModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LightModeImplCopyWith<$Res> {
  factory _$$LightModeImplCopyWith(
          _$LightModeImpl value, $Res Function(_$LightModeImpl) then) =
      __$$LightModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LightModeImplCopyWithImpl<$Res>
    extends _$LightingModeStateCopyWithImpl<$Res, _$LightModeImpl>
    implements _$$LightModeImplCopyWith<$Res> {
  __$$LightModeImplCopyWithImpl(
      _$LightModeImpl _value, $Res Function(_$LightModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LightingModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LightModeImpl implements _LightMode {
  const _$LightModeImpl();

  @override
  String toString() {
    return 'LightingModeState.lightMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LightModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lightMode,
    required TResult Function() darkMode,
  }) {
    return lightMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lightMode,
    TResult? Function()? darkMode,
  }) {
    return lightMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lightMode,
    TResult Function()? darkMode,
    required TResult orElse(),
  }) {
    if (lightMode != null) {
      return lightMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LightMode value) lightMode,
    required TResult Function(_DarkMode value) darkMode,
  }) {
    return lightMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LightMode value)? lightMode,
    TResult? Function(_DarkMode value)? darkMode,
  }) {
    return lightMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LightMode value)? lightMode,
    TResult Function(_DarkMode value)? darkMode,
    required TResult orElse(),
  }) {
    if (lightMode != null) {
      return lightMode(this);
    }
    return orElse();
  }
}

abstract class _LightMode implements LightingModeState {
  const factory _LightMode() = _$LightModeImpl;
}

/// @nodoc
abstract class _$$DarkModeImplCopyWith<$Res> {
  factory _$$DarkModeImplCopyWith(
          _$DarkModeImpl value, $Res Function(_$DarkModeImpl) then) =
      __$$DarkModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DarkModeImplCopyWithImpl<$Res>
    extends _$LightingModeStateCopyWithImpl<$Res, _$DarkModeImpl>
    implements _$$DarkModeImplCopyWith<$Res> {
  __$$DarkModeImplCopyWithImpl(
      _$DarkModeImpl _value, $Res Function(_$DarkModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LightingModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DarkModeImpl implements _DarkMode {
  const _$DarkModeImpl();

  @override
  String toString() {
    return 'LightingModeState.darkMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DarkModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lightMode,
    required TResult Function() darkMode,
  }) {
    return darkMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lightMode,
    TResult? Function()? darkMode,
  }) {
    return darkMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lightMode,
    TResult Function()? darkMode,
    required TResult orElse(),
  }) {
    if (darkMode != null) {
      return darkMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LightMode value) lightMode,
    required TResult Function(_DarkMode value) darkMode,
  }) {
    return darkMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LightMode value)? lightMode,
    TResult? Function(_DarkMode value)? darkMode,
  }) {
    return darkMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LightMode value)? lightMode,
    TResult Function(_DarkMode value)? darkMode,
    required TResult orElse(),
  }) {
    if (darkMode != null) {
      return darkMode(this);
    }
    return orElse();
  }
}

abstract class _DarkMode implements LightingModeState {
  const factory _DarkMode() = _$DarkModeImpl;
}
