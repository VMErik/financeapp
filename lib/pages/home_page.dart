import 'package:financeapp/models/notice.dart';
import 'package:financeapp/models/plan.dart';
import 'package:financeapp/widgets/footer_menu.dart';
import 'package:financeapp/widgets/notice_card.dart';
import 'package:financeapp/widgets/plan_card.dart';
import 'package:financeapp/widgets/porfolio_resume.dart';
import 'package:financeapp/widgets/subtitule.dart';
import 'package:financeapp/widgets/title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Plan> plans = [
    Plan(
      name: 'Gold',
      benefit: '30% return',
      fromColor: Colors.amber,
      toCOlor: Colors.orange,
    ),
    Plan(
      name: 'Silver',
      benefit: '60% return',
      fromColor: Colors.blueGrey,
      toCOlor: Colors.black45,
    ),
    Plan(
      name: 'Platinum',
      benefit: '90% return',
      fromColor: Colors.deepPurple,
      toCOlor: Colors.blue,
    ),
  ];

  final List<Notice> notices = [
    Notice(
      title: 'Smart Saving',
      descripction:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
      imageURL: 'assets/img/notice.png',
    ),
    Notice(
      title: 'Start Investing Today',
      descripction:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
      imageURL: 'assets/img/notice4.png',
    ),
    Notice(
      title: 'Diversify Wisely',
      descripction:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
      imageURL: 'assets/img/notice3.png',
    ),
    Notice(
      title: 'Track Your Spending',
      descripction:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
      imageURL: 'assets/img/notice2.png',
    ),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTitle(text: 'Welcome, Erik.'),
              SizedBox(height: 18),
              PorfolioResume(),
              SizedBox(height: 22),
              Row(
                children: [
                  MySubtitle(title: 'Best Plans'),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  Icon(Icons.arrow_forward_sharp, size: 15, color: Colors.red),
                ],
              ),
              SizedBox(height: 14),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: plans.length,
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    Plan plan = plans[index];
                    return PlanCard(plan: plan);
                  },
                ),
              ),
              SizedBox(height: 22),
              Text(
                'Investment Guide',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  notices.length,
                  (index) => NoticeCard(notice: notices[index]),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyFooterMenu(),
    );
  }
}
