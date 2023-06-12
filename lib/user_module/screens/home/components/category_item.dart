import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({
    super.key,
    required this.title,
    this.isActive = false,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? const TextStyle(
                      color: TextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : const TextStyle(fontSize: 12),
            ),
            if (isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                    color: yPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
              )
          ],
        ),
      ),
    );
  }
}
