import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';
import 'package:smarthub/splash_screen.dart';
import 'package:smarthub/user_module/screens/details/details_screen.dart';
import 'package:smarthub/user_module/screens/home/home_screen.dart';

class UserAppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String details = '/details';
  // Add other route names here
}

class UserAppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case UserAppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case UserAppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case UserAppRoutes.details:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
      // Add cases for other screens/routes
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
          backgroundColor: yPrimaryColor,
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
