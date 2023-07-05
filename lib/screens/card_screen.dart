import 'package:components_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imgUrl:
                  "https://hips.hearstapps.com/hmg-prod/images/screen-shot-2018-07-11-at-5-06-55-pm-1531343396.png",
              title: "Es un hermoso paisaje",
            )
          ],
        ));
  }
}
