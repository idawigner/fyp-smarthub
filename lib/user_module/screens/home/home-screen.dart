import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      title: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
              text: "Smart",
              style: TextStyle(color: yPrimaryColor),
            ),
            TextSpan(
              text: "Hub",
              style: TextStyle(color: rPrimaryColor),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    ));
  }
}
