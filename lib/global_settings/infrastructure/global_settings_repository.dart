import 'package:dartz/dartz.dart';
import 'package:words_native/core/domain/fresh.dart';
import 'package:words_native/core/infrastructure/network_exceptions.dart';
import 'package:words_native/global_settings/domain/global_settings.dart';
import 'package:words_native/global_settings/domain/global_settings_failure.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_local_service.dart';
import 'package:words_native/global_settings/infrastructure/global_settings_remote_service.dart';

class GlobalSettingsRepository {
  final GlobalSettingsRemoteService _remoteService;
  final GlobalSettingsLocalService _localService;

  GlobalSettingsRepository(this._remoteService, this._localService);

  Future<Either<GlobalSettingsFailure, Fresh<GlobalSettings>>> getSettings(
      [int page = 1]) async {
    try {
      final remoteSettings = await _remoteService.getSettings(page);
      return right(await remoteSettings.when(
        noConnection: (maxPage) async => Fresh.no(
          await _localService
              .getSettings(page)
              .then((_) => _ == null ? const GlobalSettings() : _.toDomain()),
          isNextPageAvailable: false,
        ),
        notModified: (maxPage) async => Fresh.yes(
          await _localService
              .getSettings(page)
              .then((_) => _ == null ? const GlobalSettings() : _.toDomain()),
          isNextPageAvailable: false,
        ),
        withNewData: (data, maxPage) async {
          await _localService.setSettings(data, page);
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: false,
          );
        },
      ));
    } on RestApiException catch (e) {
      return left(GlobalSettingsFailure.api(e.errorCode));
    }
  }
}
