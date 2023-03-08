import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_mobile/application/welcome/welcome_bloc.dart';

import '../../domain/auth/auth_repositorry.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/configs/injection.dart';
import '../../domain/core/constants/asset_constants.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../../infrastructure/auth/i_auth_repository.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return WelcomeBloc(WelcomeState.initial());
      },
      child: const WelcomeScreenConsumer(),
    );
  }
}

class WelcomeScreenConsumer extends StatelessWidget {
  const WelcomeScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WelcomeBloc, WelcomeState>(
      listener: (context, state) {
        //
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: SizedBox(
              height: 5.h,
              width: 90.w,
              child: Image.asset(
                AssetConstants.logo,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {},
            ),
            actions: const [
              PopUpMenu(
                menuList: [
                  PopupMenuItem(
                    value: 1,
                    child: ListTile(
                      title: Text('Log Out'),
                    ),
                  )
                ],
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PopUpMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;

  const PopUpMenu({super.key, required this.menuList, this.icon});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        position: PopupMenuPosition.under,
        itemBuilder: ((context) => menuList),
        icon: icon,
        onSelected: (value) {
          if (value == 1) {
            AppConfig appConfig = AppConfig.of(context)!;
            AuthRepository authRepository =
                IAuthRepository(apiBaseUrl: appConfig.baseUrl);
            authRepository.logoutUser();
            Future.delayed(const Duration(milliseconds: 100), () {
              navigator<NavigationService>()
                  .navigateTo(AuthRoutes.logInRoute, isClearStack: true);
            });
          }
        });
  }
}
