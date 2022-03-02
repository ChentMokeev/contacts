import 'package:flutter/material.dart';
import 'package:test_proj/assets/avatars.dart';
import 'package:test_proj/assets/colors.dart';
import 'package:test_proj/assets/typography.dart';
import 'package:test_proj/widgets/contact_block.dart';
import 'package:test_proj/widgets/search_bar.dart';
import 'package:test_proj/widgets/top_avatars.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: PhoneNumbersColors.background,
        appBar: AppBar(
          title: const Text(
            'Сотрудники',
            style: PhoneNumbersTextStyles.fSize20W700,
          ),
          elevation: 0,
          centerTitle: false,
          backgroundColor: PhoneNumbersColors.background,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBar(),
              const Text(
                'У кого сегодня день рождения',
                style: PhoneNumbersTextStyles.fSize16W700Blue,
              ),
              Row(
                children: const [
                  TopAvatars(inp: PhoneNumbersAvatars.avatar),
                  TopAvatars(inp: PhoneNumbersAvatars.avatar1),
                  TopAvatars(inp: PhoneNumbersAvatars.avatar2),
                  TopAvatars(inp: PhoneNumbersAvatars.avatar3),
                ],
              ),
              const Text(
                'У кого завтра день рождения',
                style: PhoneNumbersTextStyles.fSize16W700Black,
              ),
              Row(
                children: const [
                  TopAvatars(inp: PhoneNumbersAvatars.avatar1),
                  TopAvatars(inp: PhoneNumbersAvatars.avatar3),
                ],
              ),
              const Text(
                'Все сотрудники',
                style: PhoneNumbersTextStyles.fSize16W700Black,
              ),
              const ContactBlock(
                ava: 'Ellipse 28',
                title: 'Чыпчын Чынайтканов',
              ),
              const ContactBlock(
                ava: 'Ellipse 30',
                title: 'Чонкурсак Тойбосов',
              ),
              const ContactBlock(
                ava: 'Ellipse 31',
                title: 'Союзбек Кетпесин',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

