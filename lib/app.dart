import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'domain/core/configs/app_config.dart';
import 'domain/core/configs/injection.dart';
import 'domain/core/services/navigation_service/navigation_service.dart';
import 'domain/core/services/navigation_service/routers/route_names.dart';
import 'domain/core/services/navigation_service/routers/routing_config.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SpaceGrotesk',
        primaryColor: const Color(0xff058C42),
        colorScheme: ThemeData().colorScheme.copyWith(
              // primary
              primary: const Color(0xff032541),
              primaryContainer: const Color(0xff01b4e4),
              onPrimary: const Color(0xff0D2818),
              onPrimaryContainer: const Color(0xff020202),

              // secondary
              secondary: const Color(0xffF2F4F7),
              onSecondary: const Color(0xffD9DFE9),
              secondaryContainer: const Color(0xff969696),
              onSecondaryContainer: const Color(0xff2D3A3A),
              outline: const Color(0xffB0B8BF),

              // tertiary
              tertiary: const Color(0xffFAFAFA),
              onTertiary: const Color(0xffF5F5F5),
              tertiaryContainer: const Color(0xffE0E0E0),
              onTertiaryContainer: const Color(0xff727272),

              // white and black
              background: const Color(0xFFFFFFFF),
              onBackground: const Color(0xff000000),

              onError: Colors.red,
            ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'BebasNeue',
            fontSize: 24.sp,
          ),
          bodySmall: TextStyle(
            fontFamily: 'SpaceGrotesk',
            fontSize: 17.sp,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'SpaceGrotesk',
            fontSize: 21.sp,
          ),
        ),
      ),
      builder: (context, child) => child!,
      navigatorKey: navigator<NavigationService>().navigatorKey,
      onGenerateRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? authorizedNavigation
          : commonNavigation,
      initialRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? CoreRoutes.welcomeRoute
          : AuthRoutes.onboardingRoute,
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  //await FirebaseAuth.instance.signOut();
  print('hello');
  User? user = FirebaseAuth.instance.currentUser;

  bool isAuthorized = user != null;

  AppStateNotifier appStateNotifier = AppStateNotifier(
    isAuthorized: isAuthorized,
  );
  final AppConfig configuredApp = AppConfig(
    appTitle: appConfig.appTitle,
    baseUrl: appConfig.baseUrl,
    serverUrl: appConfig.serverUrl,
    buildFlavor: appConfig.buildFlavor,
    child: ChangeNotifierProvider<AppStateNotifier>(create: (context) {
      return appStateNotifier;
    }, child: ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return const MainApp();
      },
    )),
  );
  setupLocator(GlobalKey<NavigatorState>());
  return runApp(
    configuredApp,
  );
}
