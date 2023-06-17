import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String description, shopName, imgSource;
  final VoidCallback press;

  const StoreCard({
    Key? key,
    required this.imgSource,
    required this.shopName,
    required this.description,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width * 0.8;
    final cardHeight = MediaQuery.of(context).size.height * 0.3;
    final imageWidth = cardWidth;
    final imageHeight = cardHeight * 0.5;
    double maxTextWidth = cardWidth * 0.8;

    return Container(
      width: cardWidth,
      height: cardHeight,
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
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Image.asset(
                    imgSource,
                    width: imageWidth,
                    height: imageHeight,
                  ),
                ),
                SizedBox(
                  width: maxTextWidth,
                  child: Text(
                    shopName,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: maxTextWidth,
                  child: Text(
                    description,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
