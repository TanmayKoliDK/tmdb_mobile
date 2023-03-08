import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'domain/core/configs/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final appConfig = AppConfig(
    appTitle: 'TMDB',
    buildFlavor: 'production',
    serverUrl: '',
    baseUrl: '',
    child: Container(),
  );
  appInitializer(appConfig);
}
