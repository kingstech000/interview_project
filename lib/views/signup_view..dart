import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kingstech_starter_codes/core/router/routing_constants.dart';
import 'package:kingstech_starter_codes/core/services/navigation_service.dart';
import 'package:kingstech_starter_codes/core/utils/colors.dart';
import 'package:kingstech_starter_codes/core/utils/text.dart';
import 'package:kingstech_starter_codes/widgets/app_button.dart';
import 'package:kingstech_starter_codes/widgets/app_textfield.dart';
import 'package:kingstech_starter_codes/widgets/custom_back_button.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final NavigationService _navigationService = NavigationService.instance;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _referralController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff676059),
              Color(0xff5f4d47),
              Color(0xff392a25),
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(),
                  GestureDetector(
                    onTap: () {
                      _navigationService.navigateTo(NavigatorRoutes.loginView);
                    },
                    child: AppText.caption(
                      'Sign in instead',
                      color: AppColors.lighterRed,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              // Create account text
              AppText.h1(
                'Create an account',
                fontSize: 28.sp,
                color: AppColors.white,
              ),
              SizedBox(height: 20.h),
              // First name and Last name input fields
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.caption(
                          "First Name",
                          color: AppColors.white,
                          fontSize: 15.sp,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        AppTextField(
                          controller: _firstNameController,
                          hint: 'First name',
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: const Color(0xFF333333),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.caption(
                          "Last Name",
                          color: AppColors.white,
                          fontSize: 15.sp,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        AppTextField(
                          controller: _lastNameController,
                          hint: 'Last name',
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: const Color(0xFF333333),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.caption(
                    "Phone Number",
                    color: AppColors.white,
                    fontSize: 15.sp,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                    controller: _phoneNumberController,
                    hint: 'Phone Number',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: const Color(0xFF333333),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              // Email address input field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.caption(
                    "Email address",
                    color: AppColors.white,
                    fontSize: 15.sp,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                    controller: _emailController,
                    hint: 'Email address',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: const Color(0xFF333333),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              // Password input field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.caption(
                    "Create Password",
                    color: AppColors.white,
                    fontSize: 15.sp,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                    isPassword: true,
                    controller: _passwordController,
                    hint: 'Enter Password',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: const Color(0xFF333333),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              // Referral code input field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.caption(
                    "Referral Code (Optional)",
                    color: AppColors.white,
                    fontSize: 15.sp,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                    controller: _referralController,
                    hint: 'Enter Referral Code',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: const Color(0xFF333333),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: AppButton.primary(
                  title: "Next",
                  onTap: () {
                    _navigationService.navigateTo(NavigatorRoutes.otpView);
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 50.w,
                      height: 1.8.h,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Container(
                      width: 50.w,
                      height: 1.8.h,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'Account information',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
