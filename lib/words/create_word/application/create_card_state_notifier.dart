import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/domain/validation_failure.dart';
import 'package:words_native/global_settings/domain/global_settings_notifier.dart';
import 'package:words_native/profile/domain/user_notifier.dart';
import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/domain/word_failure.dart';
import 'package:words_native/words/core/infrastructure/word_dto.dart';
import 'package:words_native/words/create_word/application/create_state_notifier.dart';
import 'package:words_native/words/create_word/infrastructure/create_word_repository.dart';

part 'create_card_state_notifier.freezed.dart';

@freezed
class CreateCardState with _$CreateCardState {
  const CreateCardState._();
  const factory CreateCardState.loadInProgress() = _LoadInProgress;
  const factory CreateCardState.loadSuccess(Fresh<Word> word) = _LoadSuccess;
  const factory CreateCardState.loadFailure(
      Fresh<Word> word, WordFailure failure) = _LoadFailure;
  const factory CreateCardState.validationFailure(
      Fresh<Word> word, ValidationFailure failure) = _ValidationFailure;
}

class CreateCardNotifier extends StateNotifier<CreateCardState> {
  final CreateWordRepository _repository;
  final UserNotifier _userData;
  final CreateStateNotifier _createState;
  final GlobalSettingsNotifier _settings;

  CreateCardNotifier(
      this._repository, this._userData, this._createState, this._settings)
      : super(CreateCardState._());

  Future<void> create() async {
    final stateData = _createState.state;
    state = CreateCardState.loadInProgress();
    final userId = _userData.state.user.entity.id;
    final word = WordDTO(
      id: 0,
      original: stateData.original,
      translated: stateData.translated,
      user_id: userId,
      language: stateData.language == ''
          ? _settings.getSelectedLanguage()
          : stateData.language,
      views: 0,
      starred: false,
      done_at: null,
      created_at: DateTime.now(),
    );
    final failureOrCards = await _repository.save(word);
    state = failureOrCards.fold(
      (l) {
        return l.map(
          api: (_) => CreateCardState.loadFailure(
              Fresh(entity: word.toDomain(), isFresh: false), l),
          validation: (_) => CreateCardState.validationFailure(
              Fresh.no(word.toDomain()), ValidationFailure.api(_.message)),
        );
      },
      (r) {
        // _page++;
        return CreateCardState.loadSuccess(
          r.copyWith(entity: r.entity),
        );
      },
    );
  }
}
