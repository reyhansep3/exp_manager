import 'package:freezed_annotation/freezed_annotation.dart';
part 'lighting_mode_event.freezed.dart';

@freezed
class LightingModeEvent with _$LightingModeEvent{
  const factory LightingModeEvent.toggle() = _Toggle;
  const factory LightingModeEvent.setLight() = _SetLight;
  const factory LightingModeEvent.setDark() = _SetDark;

}