import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/profile/domain/short_user.dart';
import 'package:words_native/profile/domain/user_failure.dart';
import 'package:words_native/profile/infrastructure/short_user_repository.dart';

part 'short_user_notifier.freezed.dart';

@freezed
class ShortUserState with _$ShortUserState {
  const ShortUserState._();
  const factory ShortUserState.initial(Fresh<List<ShortUser>> user) = _Initial;
  const factory ShortUserState.loadInProgress(Fresh<List<ShortUser>> user) =
      _LoadInProgress;
  const factory ShortUserState.loadSuccess(Fresh<List<ShortUser>> user) =
      _LoadSuccess;
  const factory ShortUserState.loadFailure(
      Fresh<List<ShortUser>> user, UserFailure failure) = _LoadFailure;
}

class ShortUserNotifier extends StateNotifier<ShortUserState> {
  final ShortUserRepository _repository;

  ShortUserNotifier(this._repository)
      : super(ShortUserState.initial(Fresh.yes([])));

  Future<void> getUsers() async {
    state = ShortUserState.loadInProgress(state.user);
    final failureOrUsers = await _repository.getUsers();
    state = failureOrUsers.fold(
      (l) => ShortUserState.loadFailure(state.user, l),
      (r) {
        return ShortUserState.loadSuccess(Fresh.yes(r.entity));
      },
    );
  }

  List<ShortUser> getUsersList() {
    return state.user.entity;
  }
}
