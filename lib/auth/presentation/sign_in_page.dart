import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/auth/shared/providers.dart';
import 'package:words_native/local_settings/domain/local_settings_model.dart';
import 'package:words_native/local_settings/infrastructure/local_settings_storage.dart';
import 'package:words_native/local_settings/infrastructure/main_local_settings.dart';
import 'package:words_native/local_settings/infrastructure/secure_local_settings_storage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

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
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    MdiIcons.cardText,
                    size: 150,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Welcome to \n EasyWords!',
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: (String? value) {
                      // Validation condition
                      if (value!.trim().isEmpty) {
                        return 'Please enter email';
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
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: (String? value) {
                      // Validation condition
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }

                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.url,
                    controller: serverController,
                    // initialValue: storage.read(),
                    decoration: const InputDecoration(
                      labelText: 'Server',
                    ),
                    validator: (String? value) {
                      // Validation condition
                      if (value!.trim().isEmpty) {
                        return 'Please enter valid server';
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
                      context.read(authNotifierProvider.notifier).signIn(
                          emailController.text,
                          passwordController.text,
                          deviceName,
                          Uri.parse(url));
                    },
                    child: const Text('Sign In'),
                  ),
                  Text(errorMessage, style: const TextStyle(color: Colors.red)),
                ],
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
