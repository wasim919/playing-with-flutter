import "package:flutter/material.dart";
import "./qoute.dart";

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.quote,
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
              SizedBox(
                height: 16,
              ),
              Text(quote.author,
                  style: TextStyle(fontSize: 14, color: Colors.grey[800])),
              SizedBox(
                height: 16,
              ),
              FlatButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete),
                  label: Text("Delete quote"))
            ],
          ),
        ));
  }
}
