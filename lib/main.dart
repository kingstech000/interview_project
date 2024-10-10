import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kingstech_starter_codes/core/router/router.dart';
import 'package:kingstech_starter_codes/core/router/routing_constants.dart';
import 'package:kingstech_starter_codes/core/services/navigation_service.dart';
import 'package:kingstech_starter_codes/core/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark()
              .copyWith(scaffoldBackgroundColor: AppColors.black),
          navigatorKey: NavigationService.instance.navigatorKey,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: NavigatorRoutes.loginView,
        ));
  }
}
