import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../application/movie_details/movie_details_bloc.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/configs/injection.dart';
import '../../domain/core/constants/api_constants.dart';
import '../../domain/core/constants/asset_constants.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../auth/login/login_screen.dart';

class MovieDetailScreen extends StatelessWidget {
  final String movieID;
  const MovieDetailScreen({super.key, required this.movieID});

  @override
  Widget build(BuildContext context) {
    String apiBaseUrl = AppConfig.of(context)!.apiBaseUrl;
    String apiKey = AppConfig.of(context)!.apiKey;

    return BlocProvider(
      create: (context) {
        return MovieDetailsBloc(MovieDetailsState.initial(
            apiBaseUrl: apiBaseUrl, apiKey: apiKey, movieId: movieID))
          ..add(const MovieDetailsEvent.init());
      },
      child: const MovieDetailsScreenConsumer(),
    );
  }
}

class MovieDetailsScreenConsumer extends StatelessWidget {
  const MovieDetailsScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieDetailsBloc, MovieDetailsState>(
      listener: (context, state) {
        //
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: SizedBox(
              height: 5.h,
              width: 90.w,
              child: GestureDetector(
                onTap: () {
                  navigator<NavigationService>()
                      .navigateTo(CoreRoutes.homeRoute);
                },
                child: Image.asset(
                  AssetConstants.logo,
                ),
              ),
            ),
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
                      title: Text('Logout'),
                    ),
                  ),
                ],
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.w),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              height: 30.h,
                              width: 100.w,
                              child: Image.network(
                                  '${ApiConstants.displayImagePath}${state.movieDetails?.backdrop_path ?? ''}',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                              left: 10,
                              bottom: 10,
                              child: Container(
                                height: 25.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.w),
                                  color: Colors.red.withOpacity(0.4),
                                ),
                                child: Image.network(
                                    '${ApiConstants.displayImagePath}${state.movieDetails?.poster_path ?? ''}',
                                    fit: BoxFit.cover),
                              ))
                        ]),
                        SizedBox(height: 2.h),
                        Center(
                          child: Text(
                            state.movieDetails?.name ??
                                state.movieDetails?.title ??
                                '',
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.sp),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Center(
                          child: Text(
                            state.movieDetails?.first_air_date ??
                                state.movieDetails?.release_date ??
                                '',
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.sp),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            state.movieDetails?.tagline ?? '',
                            maxLines: 3,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.sp),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            'Overview',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            state.movieDetails?.overview ?? '',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp),
                          ),
                        ),
                      ]),
                ),
        );
      },
    );
  }
}
