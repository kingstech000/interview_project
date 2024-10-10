import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kingstech_starter_codes/core/constants/color_gradient.dart';
import 'package:kingstech_starter_codes/core/router/routing_constants.dart';
import 'package:kingstech_starter_codes/core/services/navigation_service.dart';
import 'package:kingstech_starter_codes/core/utils/text.dart';
import 'package:kingstech_starter_codes/widgets/app_button.dart';
import 'package:kingstech_starter_codes/widgets/app_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final NavigationService _navigationService = NavigationService.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          // Gradient background color
          decoration: ColorGradient.colorGradient,
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.h),
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                      color: Color(0xff1E1E1E),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                SizedBox(height: 25.h),
                AppText.h1(
                  'Welcome back 👋🏿',
                  fontSize: 36.sp,
                  color: Colors.white,
                ),
                SizedBox(height: 40.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.free(
                    'Email address',
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),

                SizedBox(height: 10.h),
                AppTextField(
                  controller: _emailController,
                  hint: 'Enter Email address',
                  hintStyle: const TextStyle(color: Colors.grey),
                  fillColor: const Color(0xFF333333),
                ),

                SizedBox(height: 20.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.free(
                    'Password',
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),

                SizedBox(height: 10.h),
                AppTextField(
                  controller: _passwordController,
                  hint: 'Enter Password',
                  isPassword: true,
                  hintStyle: const TextStyle(color: Colors.grey),
                  fillColor: const Color(0xFF333333),
                ),
                SizedBox(height: 10.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: AppButton.primary(
                    title: "Sign in",
                    onTap: () {
                      _navigationService.navigateTo(NavigatorRoutes.homeView);
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                // Sign-up link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.caption(
                      "I don't have an account, ",
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigationService.navigateTo(NavigatorRoutes.signView);
                      },
                      child: AppText.caption(
                        'Create account.',
                        color: const Color(0xffEF5858),
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
