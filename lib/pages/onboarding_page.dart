import 'package:financeapp/widgets/button.dart';
import 'package:financeapp/widgets/paragraph.dart';
import 'package:financeapp/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/img/onboarding.png')),
            SizedBox(height: 15),
            MyTitle(text: 'Stay on top of your finance with us'),
            MyParagraph(
              text:
                  'We are your new financial Advisors to recomeed te best investments for you.',
              size: 17,
            ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: MyButton(
                text: 'Coninue as guest',
                onPressed: () {
                  context.go('/home');
                },
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Log in',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0XFF31A062),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
