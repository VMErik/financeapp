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
              Text(
                'Stay on top of your finance with us.',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Text(
                'We are your new financial Advisors to recomeed te best investments for you.',
                style: TextStyle(fontSize: 17, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFF31A062),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Continue as Guest',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Log in',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0XFF31A062)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
      ),
    );
  }
}
