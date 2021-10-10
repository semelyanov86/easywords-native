import 'package:dartz/dartz.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/profile/domain/short_user.dart';
import 'package:words_native/profile/domain/user_failure.dart';
import 'package:words_native/profile/infrastructure/short_user_local_service.dart';
import 'package:words_native/profile/infrastructure/short_user_remote_service.dart';

class ShortUserRepository {
  final ShortUserRemoteService _remoteService;
  final ShortUserLocalService _localService;

  ShortUserRepository(this._remoteService, this._localService);

  Future<Either<UserFailure, Fresh<List<ShortUser>>>> getUsers() async {
    try {
      final usersList = await _remoteService.getUsers();
      return right(await usersList.when(
        noConnection: (maxPage) async => Fresh.no(
          await _localService
              .getUsers()
              .then((_) => _.map((e) => e.toDomain()).toList()),
          isNextPageAvailable: false,
        ),
        notModified: (maxPage) async => Fresh.yes(
          await _localService
              .getUsers()
              .then((_) => _.map((e) => e.toDomain()).toList()),
          isNextPageAvailable: false,
        ),
        withNewData: (data, maxPage) async {
          await _localService.upsertUsers(data);
          return Fresh.yes(
            data.map((e) => e.toDomain()).toList(),
            isNextPageAvailable: false,
          );
        },
      ));
    } on RestApiException catch (e) {
      return left(UserFailure.api(e.errorCode));
    }
  }
}
