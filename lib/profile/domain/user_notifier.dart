import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/profile/domain/user.dart';
import 'package:words_native/profile/domain/user_failure.dart';
import 'package:words_native/profile/infrastructure/user_repository.dart';

part 'user_notifier.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initial(Fresh<User> user) = _Initial;
  const factory UserState.loadInProgress(Fresh<User> user) = _LoadInProgress;
  const factory UserState.loadSuccess(Fresh<User> user) = _LoadSuccess;
  const factory UserState.loadFailure(Fresh<User> user, UserFailure failure) =
      _LoadFailure;
}

class UserNotifier extends StateNotifier<UserState> {
  final UserRepository _repository;

  UserNotifier(this._repository)
      : super(UserState.initial(Fresh.yes(UserRepository.defaultUser)));

  Future<void> getProfile() async {
    state = UserState.loadInProgress(state.user);
    final failureOrSettings = await _repository.getProfile();
    state = failureOrSettings.fold(
      (l) => UserState.loadFailure(state.user, l),
      (r) {
        return UserState.loadSuccess(Fresh.yes(r.entity));
      },
    );
  }

  Future<void> updatePassword(
      String current, String newPass, String confirmPass) async {
    state = UserState.loadInProgress(state.user);
    final failureOrSettings =
        await _repository.updatePassword(current, newPass, confirmPass);
    state = failureOrSettings.fold(
      (l) => UserState.loadFailure(state.user, l),
      (r) {
        return UserState.loadSuccess(Fresh.yes(r.entity));
      },
    );
  }
}
