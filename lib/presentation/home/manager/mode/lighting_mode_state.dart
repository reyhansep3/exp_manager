import 'package:freezed_annotation/freezed_annotation.dart';

part 'lighting_mode_state.freezed.dart';

@freezed
class LightingModeState with _$LightingModeState{
  const factory LightingModeState.lightMode() = _LightMode;
  const factory LightingModeState.darkMode() = _DarkMode;
}