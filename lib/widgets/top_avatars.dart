import 'package:flutter/material.dart';

class TopAvatars extends StatelessWidget {
  const TopAvatars({Key? key, required this.inp}) : super(key: key);

  final String inp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage('assets/images/$inp.png'),
      ),
    );
  }
}
