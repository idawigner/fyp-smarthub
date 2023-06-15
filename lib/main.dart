import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:smarthub/constant.dart';
import 'package:smarthub/user_module/components/user_app_routes.dart';

// void main() => runApp(const MyApp());
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Hub',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: yPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

        // Define the default font family.
        // fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayMedium: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
            fontSize: 24.0,
          ),
          titleSmall: TextStyle(
            fontSize: 18.0,
          ),
          titleLarge: TextStyle(
            fontSize: 36.0,
          ),
          bodyMedium: TextStyle(
              color: secondaryColor, fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      initialRoute: UserAppRoutes.splash,
      onGenerateRoute: UserAppRouter.generateRoute,
      // onGenerateRoute: BusinessAppRouter.generateRoute,
      // onGenerateRoute: DeliveryAppRouter.generateRoute,
    );
  }
}
