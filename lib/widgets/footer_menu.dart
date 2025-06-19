import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyFooterMenu extends StatelessWidget {
  const MyFooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0XFF31A062),
      onTap: (index) {
        if (index == 3) {
          context.push('/profile');
        } else if (index == 0) {
          context.go('/home');
        }
      },
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
