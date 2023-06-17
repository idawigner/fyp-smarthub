import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';

class UserBottomNavBar extends StatelessWidget {
  const UserBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -7),
                blurRadius: 33,
                color: const Color(0xFF6DAED9).withOpacity(0.11))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_rounded,
                color: yPrimaryColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline_rounded,
                color: secondaryColor.withOpacity(0.7),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: secondaryColor.withOpacity(0.7),
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline_rounded,
              color: secondaryColor.withOpacity(0.7),
            ),
          )
        ],
      ),
    );
  }
}
