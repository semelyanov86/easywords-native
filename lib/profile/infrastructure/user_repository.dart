import 'package:dartz/dartz.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/profile/domain/user.dart';
import 'package:words_native/profile/domain/user_failure.dart';
import 'package:words_native/profile/infrastructure/user_local_service.dart';
import 'package:words_native/profile/infrastructure/user_remote_service.dart';

class UserRepository {
  final UserRemoteService _remoteService;
  final UserLocalService _localService;
  static const defaultUser = const User(
      id: 0,
      name: 'Admin',
      email: 'admin@admin.com',
      profile_photo_path: '',
      created_at: null,
      updated_at: null,
      email_verified_at: null);

  UserRepository(this._remoteService, this._localService);

  Future<Either<UserFailure, Fresh<User>>> getProfile() async {
    try {
      final remoteProfile = await _remoteService.getProfile();
      return right(await remoteProfile.when(
        noConnection: (maxPage) async => Fresh.no(
          await _localService
              .getProfile()
              .then((_) => _ == null ? defaultUser : _.toDomain()),
          isNextPageAvailable: false,
        ),
        notModified: (maxPage) async => Fresh.yes(
          await _localService
              .getProfile()
              .then((_) => _ == null ? defaultUser : _.toDomain()),
          isNextPageAvailable: false,
        ),
        withNewData: (data, maxPage) async {
          await _localService.setProfile(data);
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: false,
          );
        },
      ));
    } on RestApiException catch (e) {
      return left(UserFailure.api(e.errorCode));
    }
  }

  Future<Either<UserFailure, Fresh<User>>> updatePassword(
      String current, String newPass, String confirmPass) async {
    try {
      final remoteProfile =
          await _remoteService.updatePassword(current, newPass, confirmPass);
      return right(await remoteProfile.when(
        noConnection: (maxPage) async => throw RestApiException(500),
        notModified: (maxPage) async => Fresh.yes(
          await _localService
              .getProfile()
              .then((_) => _ == null ? defaultUser : _.toDomain()),
          isNextPageAvailable: false,
        ),
        withNewData: (data, maxPage) async {
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: false,
          );
        },
      ));
    } on RestApiException catch (e) {
      return left(UserFailure.api(e.errorCode));
    }
  }
}
