import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kingstech_starter_codes/core/utils/colors.dart';
import 'package:kingstech_starter_codes/core/utils/text.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? color;
  final String? icon;
  final Color? iconColor;
  final Color? textColor;
  final String title;
  final bool disable;
  final BorderSide? borderSide;

  const AppButton({
    super.key,
    required this.title,
    this.onTap,
    this.color,
    this.icon,
    this.iconColor,
    this.textColor,
    this.disable = false,
    this.borderSide,
  });

  const AppButton.primary({
    super.key,
    required this.title,
    this.onTap,
    this.icon,
    this.iconColor,
    this.disable = false,
    this.borderSide,
  })  : color = AppColors.lightRed,
        textColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 58.h,
        child: TextButton(
            onPressed: onTap,
            style: TextButton.styleFrom(
                backgroundColor: color,
                iconColor: iconColor,
                side: disable ? const BorderSide() : borderSide,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.r)))),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              icon != null
                  ? SvgPicture.asset(
                      icon!,
                      height: 30,
                      width: 20,
                    )
                  : const SizedBox.shrink(),
              icon != null
                  ? const SizedBox(width: 20)
                  : const SizedBox.shrink(),
              AppText.button(title,
                  color: textColor, centered: true, fontSize: 14)
            ])));
  }
}
