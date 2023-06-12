import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarthub/constant.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Text(
            "Discount and offer",
            style: TextStyle(fontWeight: FontWeight.bold, color: TextColor),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
              ),
            ),
            child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF961F).withOpacity(0.7),
                      yPrimaryColor.withOpacity(0.7),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: SvgPicture.asset("assets/icons/macdonalds.svg")),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "Got Discount \n",
                                style: TextStyle(fontSize: 16),
                              ),
                              TextSpan(
                                text: "30%\n",
                                style: TextStyle(
                                    fontSize: 43, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Get your offer\n",
                                style: TextStyle(fontSize: 16),
                              ),
                            ]),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
