import 'package:flutter/material.dart';
import 'package:test_proj/assets/colors.dart';
import 'package:test_proj/assets/typography.dart';

class SoloScreen extends StatelessWidget {
  const SoloScreen({Key? key, required this.ava, required this.name})
      : super(key: key);

  final String ava;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: PhoneNumbersColors.background,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 57,
              backgroundImage: NetworkImage('assets/images/$ava.png'),
            ),
            Text(
              name,
              style: PhoneNumbersTextStyles.fSize20W500,
            ),
          ],
        ),
      ),
    );
  }
}
