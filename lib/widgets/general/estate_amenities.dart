import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';

class EstateAmenitiesItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color? iconColor;
  const EstateAmenitiesItem({
    super.key,
    required this.name,
    required this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              border: Border.all(color: kGreyColor, width: 1.0),
              borderRadius: BorderRadius.circular(7.5)),
          child: Center(
            child: Icon(
              icon,
              color: iconColor ?? kSecondaryColor,
              size: 10,
            ),
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
