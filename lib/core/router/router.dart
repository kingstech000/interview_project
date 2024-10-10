import 'package:flutter/material.dart';
import 'package:kingstech_starter_codes/core/router/routing_constants.dart';
import 'package:kingstech_starter_codes/views/home_view.dart';
import 'package:kingstech_starter_codes/views/login_view.dart';
import 'package:kingstech_starter_codes/views/otp_view.dart';
import 'package:kingstech_starter_codes/views/signup_view..dart';

class AppRouter {
  static PageRoute _getPageRoute({
    required RouteSettings settings,
    required Widget viewToShow,
  }) {
    return MaterialPageRoute(
        builder: (context) => viewToShow, settings: settings);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigatorRoutes.loginView:
        return _getPageRoute(settings: settings, viewToShow: const LoginView());

      case NavigatorRoutes.signView:
        return _getPageRoute(
            settings: settings, viewToShow: SignupView());

      case NavigatorRoutes.otpView:
        return _getPageRoute(settings: settings, viewToShow: OtpView());

      case NavigatorRoutes.homeView:
        return _getPageRoute(settings: settings, viewToShow: const HomeView());

      default:
        return _getPageRoute(settings: settings, viewToShow: const Scaffold());
    }
  }
}
