import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  final Function addNewTransaction;
  NewTransaction(this.addNewTransaction);

  void submitTransaction() {
    String title = titleInput.text;
    double amount = double.parse(amountInput.text);
    if (title.isEmpty || amount <= 0) {
      return;
    }
    addNewTransaction(title, amount);
  }

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
              onSubmitted: (_) => addNewTransaction(),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountInput,
              onSubmitted: (_) => submitTransaction(),
            ),
            FlatButton(
              onPressed: submitTransaction,
              child: Text("Add Transaction"),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
