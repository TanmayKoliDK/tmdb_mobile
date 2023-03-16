import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_mobile/presentation/auth/login/login_screen.dart';
import 'package:tmdb_mobile/presentation/auth/reset_password/reset_password_screen.dart';
import 'package:tmdb_mobile/presentation/auth/signup/signup_screen.dart';
import 'package:tmdb_mobile/presentation/home/home_screen.dart';

//import 'package:tmdb_mobile/presentation/welcome/welcome_screen.dart';

import '../../../../../infrastructure/platform/platform_enum.dart';
import '../../../../../presentation/movie_details/movie_details_screen.dart';
import '../../../../core/configs/determine_platform.dart';
import 'route_names.dart';
import '../../../extensions/string_extensions.dart';

Route<dynamic> authorizedNavigation(RouteSettings settings) {
  //Navigation for un authorized or common pages(Home,login,etc)
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case CoreRoutes.homeRoute:
      return _getPageRoute(
        const HomeScreen(),
        settings,
      );

    case CoreRoutes.movieDetailsRoute:
      final routeData = routingData.queryParameters;
      return _getPageRoute(
        MovieDetailScreen(
          movieID: routeData['movieId'] ?? '',
        ),
        settings,
      );

    default:
      return commonNavigation(settings);
  }
}

Route<dynamic> commonNavigation(RouteSettings settings) {
  //Navigation for un authorized or common pages(Home,etc)
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case AuthRoutes.logInRoute:
      final routData = routingData.queryParameters;
      return _getPageRoute(
        LoginScreen(
          email: routData['email'] ?? '',
        ),
        settings,
      );

    case AuthRoutes.signUpRoute:
      return _getPageRoute(
        const SignUpScreen(),
        settings,
      );

    case AuthRoutes.resetPasswordRoute:
      return _getPageRoute(
        const ResetPassword(),
        settings,
      );

    default:
      return _getPageRoute(
        Container(
          color: Colors.white,
        ),
        settings,
      );
  }
}

PageRoute _getPageRoute(
  Widget child,
  RouteSettings settings, {
  bool mainRoute = false,
}) {
  final SupportedPlatform platform = getPlatform();
  if (platform == SupportedPlatform.ios && !mainRoute) {
    return CupertinoPageRoute(builder: (BuildContext context) {
      return child;
    });
  } else if (platform == SupportedPlatform.android && !mainRoute) {
    return MaterialPageRoute(builder: (BuildContext context) {
      return child;
    });
  } else {
    return _FadeRoute(child: child, routeName: settings.name!);
  }
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

class CupertinoRoute extends PageRouteBuilder {
  final Widget enterPage;
  CupertinoRoute({required this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return enterPage;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linearToEaseOut,
                  reverseCurve: Curves.easeInToLinear,
                ),
              ),
              child: enterPage,
            );
          },
        );
}
