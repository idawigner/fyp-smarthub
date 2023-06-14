import 'package:flutter/material.dart';

import 'package:smarthub/constant.dart';
import 'package:flutter_svg/svg.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
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
        icon: const Icon(
          Icons.location_on_outlined,
          color: secondaryColor,
        ),
        onPressed: () {},
      ),
    ],
  );
}
