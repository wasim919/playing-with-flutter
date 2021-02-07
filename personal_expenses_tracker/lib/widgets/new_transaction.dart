import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  final Function addNewTransaction;
  NewTransaction(this.addNewTransaction);
  @override
  Widget build(BuildContext context) {
    return Card(
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
                addNewTransaction(
                  titleInput.text,
                  double.parse(amountInput.text),
                );
              },
              child: Text("Add Transaction"),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
