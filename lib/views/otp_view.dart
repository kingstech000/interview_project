import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kingstech_starter_codes/core/router/routing_constants.dart';
import 'package:kingstech_starter_codes/core/services/navigation_service.dart';
import 'package:kingstech_starter_codes/core/utils/colors.dart';
import 'package:kingstech_starter_codes/core/utils/text.dart';
import 'package:kingstech_starter_codes/widgets/app_button.dart';
import 'package:kingstech_starter_codes/widgets/custom_back_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpView extends StatelessWidget {
  OtpView({super.key});

  final NavigationService _navigationService = NavigationService.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                CustomBackButton(),
                SizedBox(height: 40.h),
                AppText.h1(
                  'Verify your email',
                  color: Colors.white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.free(
                      'Please enter the OTP sent to',
                      color: Colors.grey.shade400,
                      fontSize: 16.sp,
                    ),
                    AppText.free(
                      'tolu.ab19@gmail.com',
                      color: AppColors.white,
                      fontSize: 16.sp,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                _buildPinField(context),
                const Spacer(),
                AppButton.primary(
                    onTap: () {
                      _navigationService.navigateTo(NavigatorRoutes.homeView);
                    },
                    title: "Verify Email"),
                SizedBox(height: 30.h),
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
                        color: AppColors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Center(
                  child: Text(
                    'Email verification',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildPinField(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 135.w,
        child: PinCodeTextField(
          appContext: context,
          length: 3,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50.h,
            fieldWidth: 40.w,
            activeColor: Colors.grey.shade800,
            selectedColor: Colors.grey.shade500,
            inactiveColor: Colors.grey.shade700,
            activeFillColor: Colors.black,
            inactiveFillColor: AppColors.grey,
            selectedFillColor: Colors.black,
          ),
          cursorColor: Colors.white,
          textStyle: const TextStyle(color: Colors.white),
          enableActiveFill: true,
          onChanged: (value) {},
          beforeTextPaste: (text) {
            return true;
          },
        ),
      ),
      SizedBox(width: 8.w),
      Text(
        '-',
        style: TextStyle(color: Colors.white, fontSize: 24.sp),
      ),
      SizedBox(width: 8.w),
      SizedBox(
        width: 135.w,
        child: PinCodeTextField(
          appContext: context,
          length: 3,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50.h,
            fieldWidth: 40.w,
            activeColor: Colors.grey.shade800,
            selectedColor: Colors.grey.shade500,
            inactiveColor: Colors.grey.shade700,
            activeFillColor: Colors.black,
            inactiveFillColor: AppColors.grey,
            selectedFillColor: Colors.black,
          ),
          cursorColor: Colors.white,
          textStyle: const TextStyle(color: Colors.white),
          enableActiveFill: true,
          onChanged: (value) {},
          beforeTextPaste: (text) {
            return true;
          },
        ),
      ),
    ],
  );
}
