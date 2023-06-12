import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, SvgSrc;
  final press;

  const ItemCard({
    super.key,
    required this.title,
    required this.shopName,
    required this.SvgSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    //this size provide us the total height of the screen
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 20,
              color: const Color(0xFFB0CCE1).withOpacity(0.32),
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: yPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    SvgSrc,
                    height: 80,
                    width: 80,
                  ),
                ),
                Text(title),
                const SizedBox(
                  height: 10,
                ),
                Text(shopName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
