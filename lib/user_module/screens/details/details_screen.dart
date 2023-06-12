import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';
import 'package:smarthub/user_module/screens/details/components/app_bar.dart';
import 'package:smarthub/user_module/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yPrimaryColor,
      appBar: detailsAppBar(),
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
