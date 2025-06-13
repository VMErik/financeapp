import 'package:financeapp/models/plan.dart';
import 'package:financeapp/widgets/plan_card.dart';
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
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xff31A062),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your total asset porfolio',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ 1,580,000',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFEFFFE),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 20,
                              ),
                              child: Text(
                                'Invest now',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff31A062),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  Text(
                    'Best Plans',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
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
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Basic Type of investments',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'This is how you set your foot for 2020. Stock Market recession. Whats next ajsndkjasndjnajksnd aksdnjasn',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          'assets/img/onboarding.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
