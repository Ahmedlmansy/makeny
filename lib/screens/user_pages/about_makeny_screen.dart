import 'package:flutter/material.dart';

class AboutMakenyScreen extends StatelessWidget {
  const AboutMakenyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo/Group 1321314641.png",
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
