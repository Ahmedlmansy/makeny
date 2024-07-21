import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:makeny/extentions/colors.dart';
import 'package:makeny/widgets/text_icon_navigator.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/users/talaa.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 30,
                      child: Container(
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(50)),
                        padding: EdgeInsets.all(3),
                        child: SvgPicture.asset(
                          'assets/icons/cam.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "طلال أحمد عبداللطيف",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            'assets/icons/edit.svg',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "+953 5454154451",
                        style: TextStyle(
                            color: Color(0xff777777),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
            textIconNavigator(
                icon: "assets/icons/user.svg",
                text: "الملف الشخصي",
                onTap: () {}),
            textIconNavigator(
                icon: "assets/icons/files-medical 1.svg",
                text: "ملفي الطبي",
                onTap: () {}),
            textIconNavigator(
                icon: "assets/icons/Medical-Education.svg",
                text: "النثقيف الطبي",
                onTap: () {}),
            textIconNavigator(
                icon: "assets/icons/ser.svg", text: "خدماتنا", onTap: () {}),
            textIconNavigator(
                icon: "assets/makany.svg", text: "عن مكني", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
