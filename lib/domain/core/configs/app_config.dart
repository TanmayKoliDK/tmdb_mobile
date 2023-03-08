import 'package:flutter/material.dart';

import '../../../infrastructure/auth/dtos/user/user_dto.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;
  UserDto? user;

  AppStateNotifier({
    required this.isAuthorized,
    this.user,
  });

  Future<void> updateAfterAuthChange({
    required bool isAuthorized,
    UserDto? user,
  }) async {
    this.isAuthorized = isAuthorized;
    this.user = user;
    notifyListeners();
  }
}

class AppConfig extends InheritedWidget {
  final String appTitle;
  final String serverUrl;
  final String buildFlavor;
  final String baseUrl;
  @override
  // ignore: overridden_fields
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const AppConfig(
      {required this.appTitle,
      required this.buildFlavor,
      required this.child,
      required this.baseUrl,
      required this.serverUrl})
      : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
