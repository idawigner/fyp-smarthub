import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }
}
