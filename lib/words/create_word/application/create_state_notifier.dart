import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'create_state_notifier.freezed.dart';

@freezed
class CreateState with _$CreateState {
  const CreateState._();
  const factory CreateState({
    @Default('') String original,
    @Default('') String translated,
    @Default('') String language,
  }) = _CreateState;
}

class CreateStateNotifier extends StateNotifier<CreateState> {
  CreateStateNotifier() : super(const CreateState());

  void setOriginal(String value) {
    state = state.copyWith(original: value);
  }

  void setTranslated(String value) {
    state = state.copyWith(translated: value);
  }

  void setLanguage(String value) {
    state = state.copyWith(language: value);
  }
}
