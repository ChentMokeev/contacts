import 'package:flutter/material.dart';
import 'package:test_proj/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: SizedBox(
                width: double.infinity,
                height: 283,
                child: Image.asset(
                  'assets/images/bg_top.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  const Text(
                    'Главная',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const ProVersionAd(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 41, left: 14, right: 14),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        color: Color(0xffF9F8FF),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                right: 5, left: 5, bottom: 20),
                            child: Text(
                              'Категории',
                              style: h1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Card(
                                  imginp: 'assets/images/adversety.png',
                                  title: 'Реклама',
                                  subTitle: '106 пользователей'),
                              Card(
                                  imginp: 'assets/images/co_pr.png',
                                  title: 'Взаимопиар',
                                  subTitle: '56 заявок'),
                              Card(
                                  imginp: 'assets/images/barter.png',
                                  title: 'Бартер',
                                  subTitle: '245 заявок'),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 5,
                              right: 5,
                              top: 46,
                            ),
                            margin: const EdgeInsets.only(bottom: 29),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Рекламные кампании',
                                  style: h1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: kButtonColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 0,
                                        vertical: 0,
                                      )),
                                  child: const Text(
                                    'Все',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          NewsWidget()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProVersionAd extends StatelessWidget {
  const ProVersionAd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.fromLTRB(18, 20, 18, 44),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 27, right: 20),
                child: Image.asset("assets/images/Pro_icon.png", fit: BoxFit.cover,),
              )
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(bottom: 7),
                  child: const Text(
                    'Начните зарабатывать!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Приобретите тариф Behype-PRO \nи начните свою карьеру!',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          MediaQuery.of(context).size.width / 2 - 24,
      decoration: companyItemStyle,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: companyItemImg,
            child: Image.asset(
              'assets/images/Frame_news.png',
              height: 110,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 38,
            decoration: companyItemTitle,
            child: const Text(
              'В новом обновлении',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String imginp;
  final String title;
  final String subTitle;

  const Card(
      {Key? key,
      required this.imginp,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 125,
        // width: 107,
        padding: const EdgeInsets.all(0.5),
        decoration: outlineWrap,
        margin: const EdgeInsets.all(5),
        child: Container(
          decoration: decorItem,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 18),
                child: Image.asset(
                  imginp,
                  height: 50,
                ),
              ),
              Text(
                title,
                style: kTitleTextStyle,
              ),
              Text(
                subTitle,
                style: kSubTitleTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
