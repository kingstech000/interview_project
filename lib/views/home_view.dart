import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kingstech_starter_codes/core/constants/assets.dart';
import 'package:kingstech_starter_codes/core/utils/colors.dart';
import 'package:kingstech_starter_codes/core/utils/text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isBalanceVisible = true;
  String accountNumber = "8192017482";

  List quickActionIcons = [
    SvgAsset.dataSaverIcon,
    SvgAsset.cardIcon,
    SvgAsset.frameIcon,
    SvgAsset.creditCardIcon,
    SvgAsset.casinoIcon,
    SvgAsset.backupIcon,
    SvgAsset.subscriptionsIcon,
    SvgAsset.passwordIcon,
  ];

  List quickActionLabels = [
    "Data",
    "Airtime",
    "Showmax",
    "GiftCard",
    "Betting",
    "Electricity",
    "TV/Cable",
    "E-Pin",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.h,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.r),
                        bottomRight: Radius.circular(25.r))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            SvgAsset.userIcon,
                            width: 40.w,
                            height: 40.h,
                          ),
                          AppText.body(
                            "Welcome, Sam 👋🏿",
                            fontSize: 24.sp,
                          ),
                          SvgPicture.asset(
                            SvgAsset.notificationIcon,
                            width: 40.w,
                            height: 40.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 125.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color(0xffEFA058),
                            Color(0xffEF5858),
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          bottomRight: Radius.circular(25.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.r),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.free(
                                  "Wallet Balance",
                                  color: AppColors.white,
                                  fontSize: 12.sp,
                                ),
                                Row(
                                  children: [
                                    AppText.free(
                                      fontSize: 20.sp,
                                      isBalanceVisible ? 'NGN 50,000' : '*****',
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    GestureDetector(
                                      child: Icon(
                                        isBalanceVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: AppColors.white,
                                        size: 20.r,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          isBalanceVisible = !isBalanceVisible;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  height: 30.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.r),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppText.caption(
                                        "Cashback",
                                        fontSize: 12.sp,
                                        color: const Color(0xff282828),
                                      ),
                                      SizedBox(
                                        width: 4.h,
                                      ),
                                      AppText.caption(
                                        "N341.20",
                                        fontSize: 12.sp,
                                        color: AppColors.lighterRed,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 8.w),
                            Container(
                              height: 80.h,
                              width: 1.8.w,
                              color: AppColors.black.withOpacity(0.15),
                            ),
                            SizedBox(width: 8.w),
                            Container(
                              width: 150.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.4),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText.free(
                                      "MONIEPOINT",
                                      color: AppColors.white,
                                    ),
                                    Row(
                                      children: [
                                        AppText.free(
                                          fontSize: 18.sp,
                                          accountNumber,
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                                text: accountNumber));
                                          },
                                          child: const Icon(Icons.copy,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    AppText.free(
                                      "Deposit Fee: N20",
                                      fontSize: 13.sp,
                                      color: AppColors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          optionButton(
                            SvgAsset.plusIcon,
                            "TopUp",
                          ),
                          verticalDivider(),
                          optionButton(
                            SvgAsset.sendIcon,
                            "Transfer",
                          ),
                          verticalDivider(),
                          optionButton(
                            SvgAsset.clockIcon,
                            "History",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 60.w,
                      height: 3.5.h,
                      color: AppColors.grey.withOpacity(0.1),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.free(
                      "Quick Actions",
                      color: AppColors.white,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 160.h,
                      width: 300.w,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 8.0.w,
                            mainAxisSpacing: 10.0.h,
                            childAspectRatio: 1),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Container(
                              height: 70.h,
                              width: 100.w,
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlack,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: optionButton2(
                                quickActionIcons[index],
                                quickActionLabels[index],
                              ));
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.free(
                          "News & Updates",
                          color: AppColors.white,
                        ),
                        AppText.free(
                          "View all",
                          color: AppColors.lighterRed,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      height: 120.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          newsUpdateCard(),
                          newsUpdateCard(),
                          newsUpdateCard(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset(
                        SvgAsset.chatsIcon,
                        width: 45.w,
                        height: 45.h,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Dark background for navigation bar
        unselectedItemColor: Colors.grey, // Unselected item color
        selectedItemColor: Colors.white, // Selected item color
        currentIndex: 0,
        onTap: (index) {},
        type: BottomNavigationBarType.fixed, // To ensure the bar doesn't shift
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAsset.homeIcon,
              width: 25.w,
              height: 25.h,
            ), // Home icon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps,
              color: AppColors.grey.withOpacity(0.8),
            ), // Services icon
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAsset.arrowsIcon,
              width: 25.w,
              height: 25.h,
            ), // Statistics icon
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAsset.peopleIcon,
              width: 25.w,
              height: 25.h,
            ), // Referrals icon
            label: 'Referrals',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAsset.settingsIcon,
              width: 25.w,
              height: 25.h,
            ), // Settings icon
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Column optionButton(String icon, String caption) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          width: 28.w,
          height: 28.h,
        ),
        SizedBox(
          height: 8.h,
        ),
        AppText.caption(
          caption,
          fontSize: 12.sp,
        )
      ],
    );
  }

  Column optionButton2(String icon, String caption) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          width: 27.w,
          height: 27.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        AppText.caption(
          caption,
          fontSize: 13.sp,
          color: AppColors.white,
        )
      ],
    );
  }

  Widget verticalDivider() {
    return Container(
      height: 20.h,
      width: 1,
      color: AppColors.black.withOpacity(0.1),
    );
  }

  Widget newsUpdateCard() {
    return Container(
      width: 250.w,
      margin: EdgeInsets.only(right: 16.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image.asset(ImageAsset.newsImage),
    );
  }
}
