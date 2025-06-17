import 'package:flutter/material.dart';

class MyFooterMenu extends StatelessWidget {
  const MyFooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0XFF31A062),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Product'),
        BottomNavigationBarItem(
          icon: Icon(Icons.change_circle),
          label: 'Transaction',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_people_sharp),
          label: 'Account',
        ),
      ],
    );
  }
}
