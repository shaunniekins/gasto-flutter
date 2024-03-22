import 'package:flutter/material.dart';
import 'package:myapp/utils/global.colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, dynamic>> transactions = [
    {'title': 'Food', 'amount': -100},
    {'title': 'Travel', 'amount': -150},
    {'title': 'Shopping', 'amount': -75},
    {'title': 'Salary', 'amount': 2500},
    {'title': 'Salary', 'amount': 2500},
    {'title': 'Shopping', 'amount': -75},
    {'title': 'Shopping', 'amount': -75},
    {'title': 'Shopping', 'amount': -75},
    {'title': 'Salary', 'amount': 2500},
    {'title': 'Salary', 'amount': 2500},
    {'title': 'Salary', 'amount': 2500},
    {'title': 'Shopping', 'amount': -75},
    {'title': 'Salary', 'amount': 2500},
    {'title': 'Salary', 'amount': 2500},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: AppBar(
            // backgroundColor: Colors.pink,
            title: const Text('Gasto'),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/gasto_logo.jpeg'),
              radius: 15.0,
            ),
            toolbarHeight: 60.0,
            toolbarOpacity: 1.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: GlobalColors.mainTheme,
                child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SizedBox(
                      // height: 60,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Expenses',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '\$2,175',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          final transaction = transactions[index];
                          return Card(
                            color: GlobalColors.thirdTheme,
                            margin: const EdgeInsets.symmetric(vertical: 4.0),
                            child: ListTile(
                              title: Text(transaction['title']),
                              trailing: Text(
                                '\$${transaction['amount'].abs().toString()}',
                                style: TextStyle(
                                  color: transaction['amount'] >= 0
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: GlobalColors.mainTheme,
        child: const Icon(Icons.add),
      ),
    );
  }
}
