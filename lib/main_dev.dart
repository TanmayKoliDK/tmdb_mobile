import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'domain/core/configs/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final appConfig = AppConfig(
    appTitle: 'TMDB-Dev',
    buildFlavor: 'dev',
    serverUrl: '',
    apiKey: 'f07f416421d64fe36ff618c87b64741b',
    apiBaseUrl: 'https://api.themoviedb.org/3/',
    child: Container(),
  );
  appInitializer(appConfig);
}
