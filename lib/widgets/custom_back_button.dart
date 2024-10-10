import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kingstech_starter_codes/core/services/navigation_service.dart';
import 'package:kingstech_starter_codes/core/utils/text.dart';

class CustomBackButton extends StatelessWidget {
  CustomBackButton({super.key});

  final NavigationService _navigationService = NavigationService.instance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigationService.goBack();
      },
      child: Row(
        children: [
          const Icon(Icons.arrow_back_ios, color: Colors.white),
          SizedBox(width: 5.w),
          AppText.caption(
            'Back',
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ],
      ),
    );
  }
}
