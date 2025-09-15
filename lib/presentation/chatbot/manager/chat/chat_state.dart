
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState{
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading(List<Map<String, String>> messages) = _Loading;
  const factory ChatState.loaded(List<Map<String, String>> messages) = _Loaded;
  const factory ChatState.error(List<Map<String, String>> messages, String error) = _Error;
}