import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../application/home/home_bloc.dart';
import '../../domain/core/constants/asset_constants.dart';
import '../auth/login/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return HomeBloc(HomeState.initial());
      },
      child: HomeScreenConsumer(),
    );
  }
}

class HomeScreenConsumer extends StatelessWidget {
  HomeScreenConsumer({super.key});
  var items = [
    'Today',
    'This Week',
  ];

  String dropdownvalue = 'Today';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
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
              child: Image.asset(
                AssetConstants.logo,
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
                      title: Text('Login'),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: ListTile(
                      title: Text('Sign Up'),
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
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.network(
                    'https://w0.peakpx.com/wallpaper/959/842/HD-wallpaper-itachi-uchiha-mys-itachi-uchiha-naruto.jpg',
                    height: 45.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.sp),
                        ),
                        Text(
                          'Millions of movies,',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp),
                        ),
                        Text(
                          'TV shows and people',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp),
                        ),
                        Text(
                          'to discover. Explore',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp),
                        ),
                        Text(
                          'now.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp),
                        ),
                        SizedBox(height: 3.h),
                        Container(
                          width: 90.w,
                          height: 8.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 2.5.h, horizontal: 8.w),
                            child: Text(
                              'Search...',
                              style: TextStyle(
                                  fontSize: 18.sp, color: Colors.grey.shade600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 3.w)),
                    Text(
                      'Trending',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 6.w),
                    SizedBox(
                      width: 33.w,
                      height: 6.h,
                      child: DropdownButtonFormField(
                          dropdownColor: Theme.of(context).colorScheme.primary,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primary,
                            contentPadding: EdgeInsets.only(
                                left: 4.w, right: 4.w, top: 1.h),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.w)),
                            ),
                          ),
                          isExpanded: true,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 128, 224, 131),
                              ),
                          icon: SvgPicture.asset(
                            AssetConstants.arrowDown,
                            width: 12.w,
                            height: 7.w,
                            color: const Color.fromARGB(255, 128, 224, 131),
                          ),
                          value: dropdownvalue,
                          items: items.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            dropdownvalue = newValue!;
                          }),
                    ),
                  ]),
                  SizedBox(height: 1.h),
                  SizedBox(
                    height: 30.h,
                    width: 100.w,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 5.w,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(1.5.w),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1.5.w),
                              child: Image.network(
                                  'https://m.media-amazon.com/images/M/MV5BODZhNzlmOGItMWUyYS00Y2Q5LWFlNzMtM2I2NDFkM2ZkYmE1XkEyXkFqcGdeQXVyMTU5OTA4NTIz._V1_FMjpg_UX1000_.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ]);
                      },
                    ),
                  ),
                ]),
              ]),
            ]),
          ),
        );
      },
    );
  }
}
