import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../application/reset_passwod/reset_password_bloc.dart';
import '../../../domain/core/configs/app_config.dart';
import '../../../domain/core/configs/injection.dart';
import '../../../domain/core/constants/asset_constants.dart';
import '../../../domain/core/constants/string_constants.dart';
import '../../../domain/core/services/navigation_service/navigation_service.dart';
import '../../../domain/core/services/navigation_service/routers/route_names.dart';
import '../../core/widget/custom_button.dart';
import '../../core/widget/custom_textfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final AppConfig appConfig = AppConfig.of(context)!;
    return BlocProvider(
      create: (context) => ResetPasswordBloc(
          ResetPasswordState.initial(apiBaseUrl: appConfig.baseUrl)),
      child: const ResetPasswordConsumer(),
    );
  }
}

class ResetPasswordConsumer extends StatelessWidget {
  const ResetPasswordConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) {
        //

        if (state.isSuccess) {
          ErrorConstants.showToast(
            AuthConstants.pleaseCheckYourEmail,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          );
          navigator<NavigationService>().navigateTo(
            AuthRoutes.logInRoute,
          );
        } else if (state.isFailed) {
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.errorMessage,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10.sp,
                      ),
                ),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 2),
              ),
            );
            context.read<ResetPasswordBloc>().add(
                  ResetPasswordEvent.emitFromAnywhere(
                    state: state.copyWith(isFailed: false, errorMessage: ''),
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reset password',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        PrimaryTextField(
                          controller: state.emailController,
                          hintText: 'What\'s your email?',
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
                                btnText: 'Continue',
                                textFontSize: 16.sp,
                                onPressedBtn: () {
                                  FocusScope.of(context).unfocus();

                                  if (state.formKey.currentState!.validate()) {
                                    context.read<ResetPasswordBloc>().add(
                                        const ResetPasswordEvent.onSendEmail());
                                  }
                                },
                                width: 24.w,
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
                              ),
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
