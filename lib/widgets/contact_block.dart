import 'package:flutter/material.dart';
import 'package:test_proj/screens/solo_screen.dart';

class ContactBlock extends StatelessWidget {
  const ContactBlock({Key? key, required this.title, required this.ava})
      : super(key: key);

  final String title;
  final String ava;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SoloScreen(ava: ava, name: title),
          ),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage('assets/images/$ava.png'),
        ),
        title: Text(title),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.call,
            color: Colors.green,
          ),
        ),
        tileColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
