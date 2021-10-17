import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.lightGreen,
      systemNavigationBarColor: Colors.lightGreen,
    ),
  );
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
