import "package:flutter/material.dart";
import "package:intl/intl.dart";

import "./transaction.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 59.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: "Daily Groceries",
      amount: 20.99,
      date: DateTime.now(),
    )
  ];
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Expenses"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Text("Charts"),
            color: Colors.blue,
          ),
          Card(
              elevation: 10,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                        controller: titleInput,
                      ),
                      TextField(
                          decoration: InputDecoration(labelText: "Amount"),
                          controller: amountInput),
                      FlatButton(
                        onPressed: () {
                          print(titleInput.text);
                          print(amountInput.text);
                        },
                        child: Text("Add Transaction"),
                        textColor: Colors.purple,
                      )
                    ],
                  ))),
          Column(
            children: [
              ...transactions.map((tx) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 2,
                          color: Colors.purple,
                        )),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "\$${tx.amount}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMd().format(tx.date),
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }).toList()
            ],
          )
        ],
      ),
    );
  }
}
