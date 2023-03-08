import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_mobile/application/sign_up/sign_up_bloc.dart';
import 'package:tmdb_mobile/domain/core/configs/injection.dart';
import 'package:tmdb_mobile/domain/core/services/navigation_service/navigation_service.dart';
import 'package:tmdb_mobile/domain/core/services/navigation_service/routers/route_names.dart';
import 'package:tmdb_mobile/presentation/core/widget/custom_button.dart';

import '../../../domain/core/configs/app_config.dart';
import '../../../domain/core/constants/asset_constants.dart';
import '../../../domain/core/constants/string_constants.dart';
import '../../core/widget/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String apiBaseUrl = AppConfig.of(context)!.baseUrl;

    return BlocProvider(
      create: (context) =>
          SignUpBloc(SignUpState.initial(apiBaseUrl: apiBaseUrl)),
      child: const SignUpScreenConsumer(),
    );
  }
}

class SignUpScreenConsumer extends StatelessWidget {
  const SignUpScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        //

        if (state.isSuccess) {
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateAfterAuthChange(user: state.userDto, isAuthorized: true);
          Future.delayed(const Duration(milliseconds: 100), () {
            navigator<NavigationService>()
                .navigateTo(CoreRoutes.welcomeRoute, isClearStack: true);
          });
        } else if (state.isFailed) {
          if (state.errorMessage.isNotEmpty) {
            ErrorConstants.showToast(
              state.errorMessage,
            );

            context.read<SignUpBloc>().add(
                  SignUpEvent.emitFromAnywhere(
                    state: state.copyWith(
                        errorMessage: '',
                        isFailed: false,
                        isLoading: false,
                        isSuccess: false),
                  ),
                );
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: //const Text('TMDB', style: TextStyle(color: Colors.white)),
                SizedBox(
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
          body: ModalProgressHUD(
            inAsyncCall: state.isLoading,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
              child: SingleChildScrollView(
                child: Form(
                  key: state.formKey,
                  child: 
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          'Sign up for an account',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        PrimaryTextField(
                          controller: state.nameController,
                          hintText: 'Enter Your Username',
                          labelText: 'Username',
                          inputWithLabel: true,
                          validator: (value) {
                            if (state.validateForm) {
                              if (value == null || value.isEmpty) {
                                return ErrorConstants.requiredField;
                              }
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        PrimaryTextField(
                          controller: state.passwordController,
                          hintText: 'Enter Your password',
                          labelText: 'Password (4 characters minimum)',
                          inputWithLabel: true,
                          obscureText: !state.showPassword,
                          suffixIcon: state.showPassword
                              ? SvgPicture.asset(
                                  AssetConstants.eye,
                                  height: 3.h,
                                )
                              : SvgPicture.asset(
                                  AssetConstants.closedEye,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                  height: 2.5.h,
                                ),
                          suffixIconTap: () {
                            context.read<SignUpBloc>().add(
                                SignUpEvent.emitFromAnywhere(
                                    state: state.copyWith(
                                        showPassword: !state.showPassword)));
                          },
                          validator: (value) {
                            if (state.validateForm) {
                              if (value == null || value.isEmpty) {
                                return ErrorConstants.requiredField;
                              } else if (value.length < 4) {
                                return ErrorConstants.weakPassword;
                              }
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        PrimaryTextField(
                          controller: state.confirmPasswordController,
                          hintText: 'Enter Your password',
                          labelText: 'Password Confrim',
                          inputWithLabel: true,
                          obscureText: !state.showConfirmPassword,
                          suffixIconTap: () {
                            context.read<SignUpBloc>().add(
                                SignUpEvent.emitFromAnywhere(
                                    state: state.copyWith(
                                        showConfirmPassword:
                                            !state.showConfirmPassword)));
                          },
                          suffixIcon: state.showConfirmPassword
                              ? SvgPicture.asset(
                                  AssetConstants.eye,
                                  height: 3.h,
                                )
                              : SvgPicture.asset(
                                  AssetConstants.closedEye,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                  height: 2.5.h,
                                ),
                          validator: (value) {
                            if (state.validateForm) {
                              if (value == null || value.isEmpty) {
                                return ErrorConstants.requiredField;
                              } else if (value !=
                                  state.passwordController.text) {
                                return ErrorConstants.wrongConfirmPassword;
                              } else if (value.length < 4) {
                                return ErrorConstants.weakPassword;
                              }
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        PrimaryTextField(
                          controller: state.emailController,
                          hintText: 'Enter Your Email Id',
                          labelText: 'Email',
                          inputWithLabel: true,
                          validator: (value) {
                            if (state.validateForm) {
                              if (value == null || value.isEmpty) {
                                return ErrorConstants.requiredField;
                              } else if (!EmailValidator.validate(value)) {
                                return ErrorConstants.invalidEmail;
                              }
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PrimaryButton(
                                elevation: 0,
                                bgColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                btnText: 'Sign Up',
                                textFontSize: 16.sp,
                                onPressedBtn: () {
                                  FocusScope.of(context).unfocus();

                                  if (state.formKey.currentState!.validate()) {
                                    context
                                        .read<SignUpBloc>()
                                        .add(const SignUpEvent.onSignUp());
                                  }
                                },
                                width: 22.w,
                                height: 4.h,
                              ),
                              SizedBox(width: 5.w),
                              TextButton(
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                onPressed: () {},
                              )
                            ]),
                      ]),
                ),
              ),
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
          navigator<NavigationService>().navigateTo(AuthRoutes.logInRoute);
        } else if (value == 2) {
          navigator<NavigationService>().navigateTo(AuthRoutes.signUpRoute);
        }
      },
    );
  }
}
