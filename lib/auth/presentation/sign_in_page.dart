import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/auth/application/auth_notifier.dart';
import 'package:words_native/auth/shared/providers.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/local_settings/domain/local_settings_model.dart';
import 'package:words_native/local_settings/infrastructure/local_settings_storage.dart';
import 'package:words_native/local_settings/infrastructure/main_local_settings.dart';
import 'package:words_native/local_settings/infrastructure/secure_local_settings_storage.dart';

class SignInPage extends StatefulWidget {
  final StateNotifierProvider<AuthNotifier, AuthState>? authNotifierProvider;

  const SignInPage({Key? key, required this.authNotifierProvider})
      : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final serverController = TextEditingController();
  late String deviceName;
  late String initialServerName;
  String errorMessage = '';

  final LocalSettingsStorage storage =
      SecureLocalSettingsStorage(const FlutterSecureStorage());

  @override
  void initState() {
    super.initState();
    getDeviceName();
    getInitialServer();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderListener<AuthState>(
      provider: widget.authNotifierProvider,
      onChange: (context, state) {
        state.map(
          initial: (_) {},
          unauthenticated: (_) {},
          authenticated: (_) {},
          failure: (_) {
            _.failure.map(
              server: (_) {
                showNoConnectionToast(
                  _.message ?? S.of(context).auth_error,
                  context,
                );
              },
              storage: (_) {
                showNoConnectionToast(
                  _.toString(),
                  context,
                );
              },
            );
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/easywords-full.png'),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: S.of(context).email,
                      ),
                      validator: (String? value) {
                        // Validation condition
                        if (value!.trim().isEmpty) {
                          return S.of(context).email_helper;
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      obscureText: true,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                          labelText: S.of(context).login_password),
                      validator: (String? value) {
                        // Validation condition
                        if (value!.isEmpty) {
                          return S.of(context).login_password_validation;
                        }

                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.url,
                      controller: serverController,
                      // initialValue: storage.read(),
                      decoration: InputDecoration(
                        labelText: S.of(context).server,
                      ),
                      validator: (String? value) {
                        // Validation condition
                        if (value!.trim().isEmpty) {
                          return S.of(context).server_validation;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final url =
                            MainLocalSettings.parseUrl(serverController.text);

                        final settingsModel = LocalSettingsModel(server: url);
                        storage.save(settingsModel);
                        final authState =
                            context.read(authNotifierProvider.notifier);
                        authState.signIn(
                            emailController.text,
                            passwordController.text,
                            deviceName,
                            Uri.parse(url));
                      },
                      child: Text(S.of(context).sign_in),
                    ),
                    Text(errorMessage,
                        style: const TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> getDeviceName() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        setState(() {
          deviceName = build.model;
        });
      } else if (Platform.isIOS) {
        var build = await deviceInfoPlugin.iosInfo;
        setState(() {
          deviceName = build.model;
        });
      }
    } on PlatformException {
      setState(() {
        deviceName = 'Failed to get platform version';
      });
    }
  }

  Future<void> getInitialServer() async {
    final settingsCredentials = await storage.read();
    setState(() {
      serverController.text = settingsCredentials?.server ?? 'easywordsapp.ru';
    });
  }
}
