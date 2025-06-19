import 'package:financeapp/models/plan.dart';
import 'package:financeapp/models/transaction.dart';
import 'package:financeapp/widgets/subtitule.dart';
import 'package:financeapp/widgets/title.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      value: 200000,
      description: 'Buy"APPL" Stock',
      date: '14 JUN 2025',
      type: "BUY",
    ),
    Transaction(
      value: 150820,
      description: 'Sell "TLKM" Stock',
      date: '13 JUN 2025',
      type: "SELL",
    ),
    Transaction(
      value: 92500,
      description: 'Buy "TLKM" Stock',
      date: '11 JUN 2025',
      type: "BUY",
    ),
    Transaction(
      value: 150000,
      description: 'Sell "FB" Stock',
      date: '11 JUN 2025',
      type: "SELL",
    ),
    Transaction(
      value: 152485,
      description: 'Sell "APPL" Stock',
      date: '10 JUN 2025',
      type: "SELL",
    ),
    Transaction(
      value: 92500,
      description: 'Buy "TLKM" Stock',
      date: '09 JUN 2025',
      type: "BUY",
    ),
    Transaction(
      value: 150000,
      description: 'Sell "FB" Stock',
      date: '09 JUN 2025',
      type: "SELL",
    ),
    Transaction(
      value: 152485,
      description: 'Sell "APPL" Stock',
      date: '08 JUN 2025',
      type: "SELL",
    ),
  ];

  final Plan plan;

  DetailPage({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Asset',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.close, size: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your total asset porfolio'),
                    Row(
                      children: [
                        Text(
                          '\$1,500.000   ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.upload, color: Colors.green),
                            Text(' +2%', style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              MySubtitle(title: 'Current Plans'),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [plan.fromColor, plan.toCOlor],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plan.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        plan.benefit,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'See All Plans',
                    style: TextStyle(fontSize: 22, color: Colors.red),
                  ),
                  Icon(Icons.arrow_forward_sharp, size: 15, color: Colors.red),
                ],
              ),
              SizedBox(height: 15),
              MySubtitle(title: 'History'),
              SizedBox(height: 15),
              Column(
                children: List.generate(
                  transactions.length,
                  (index) => _createHistoryCard(transactions[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createHistoryCard(Transaction transaction) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$ ${transaction.value}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: transaction.type == "SELL" ? Colors.green : Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  transaction.description,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  transaction.date,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
