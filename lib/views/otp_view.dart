import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kingstech_starter_codes/core/constants/color_gradient.dart';
import 'package:kingstech_starter_codes/core/router/routing_constants.dart';
import 'package:kingstech_starter_codes/core/services/navigation_service.dart';
import 'package:kingstech_starter_codes/core/utils/colors.dart';
import 'package:kingstech_starter_codes/core/utils/text.dart';
import 'package:kingstech_starter_codes/widgets/app_button.dart';
import 'package:kingstech_starter_codes/widgets/custom_back_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final NavigationService _navigationService = NavigationService.instance;

  final TextEditingController _pin1Controller = TextEditingController();
  final TextEditingController _pin2Controller = TextEditingController();
  final FocusNode _firstFieldFocusNode = FocusNode();
  final FocusNode _secondFieldFocusNode = FocusNode();

  @override
  void dispose() {
    _pin1Controller.dispose();
    _pin2Controller.dispose();
    _firstFieldFocusNode.dispose();
    _secondFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: ColorGradient.colorGradient,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SingleChildScrollView(
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
                    _buildPinField(context, _pin1Controller, _pin2Controller,
                        _firstFieldFocusNode, _secondFieldFocusNode),
                    SizedBox(
                      height: 350.h,
                    ),
                    AppButton.primary(
                        onTap: () {
                          _navigationService
                              .navigateTo(NavigatorRoutes.homeView);
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildPinField(
    BuildContext context,
    TextEditingController pin1Controller,
    TextEditingController pin2Controller,
    FocusNode firstFocusNode,
    FocusNode secondFocusNode) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // First PinCodeTextField (handles first 3 digits)
      SizedBox(
        width: 135.w,
        child: PinCodeTextField(
          appContext: context,
          controller: pin1Controller,
          length: 3,
          obscureText: false,
          animationType: AnimationType.fade,
          focusNode: firstFocusNode,
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
          onChanged: (value) {
            if (value.length == 3) {
              FocusScope.of(context).requestFocus(secondFocusNode);
            }
          },
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

      // Second PinCodeTextField (handles last 3 digits)
      SizedBox(
        width: 135.w,
        child: PinCodeTextField(
          appContext: context,
          controller: pin2Controller,
          length: 3,
          obscureText: false,
          animationType: AnimationType.fade,
          focusNode: secondFocusNode,
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
          onChanged: (value) {
            // Handle second field change
          },
          beforeTextPaste: (text) {
            return true;
          },
        ),
      ),
    ],
  );
}
