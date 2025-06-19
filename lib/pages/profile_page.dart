import 'package:financeapp/widgets/footer_menu.dart';
import 'package:financeapp/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  final List<Map<String, dynamic>> tileItems = [
    {'icon': Icons.contact_emergency_sharp, 'title': 'Contact Info'},
    {'icon': Icons.money, 'title': 'Source of Funding Info'},
    {'icon': Icons.monetization_on, 'title': 'Bank Account Info'},
    {'icon': Icons.document_scanner_sharp, 'title': 'Document Info'},
    {'icon': Icons.settings, 'title': 'Settings'},
  ];

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.go('/home'),
          child: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTitle(text: 'Profile'),
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/avatar.jpg'),
                      radius: 60,
                    ),
                    SizedBox(height: 22),

                    Text(
                      'Erik Monroy',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Expert'),
                  ],
                ),
              ),
              SizedBox(height: 22),

              Column(
                children: [
                  ListView.builder(
                    itemCount: tileItems.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = tileItems[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Icon(item['icon']),
                          title: Text(
                            item['title'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyFooterMenu(),
    );
  }
}
