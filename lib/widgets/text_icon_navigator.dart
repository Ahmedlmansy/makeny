import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget textIconNavigator({
  required String icon,
  required String text,
  required Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 25,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: Color(0xffA2A2A2),
          )
        ],
      ),
    ),
  );
}
