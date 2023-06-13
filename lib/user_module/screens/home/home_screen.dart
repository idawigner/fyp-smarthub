import 'package:flutter/material.dart';

import 'package:smarthub/user_module/screens/home/components/app_bar.dart';
import 'package:smarthub/user_module/screens/home/components/body.dart';
import 'package:smarthub/user_module/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: const SingleChildScrollView(
        child: Body(),
      ),
      bottomNavigationBar: const UserBottomNavBar(),
    );
  }
}
