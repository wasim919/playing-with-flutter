import "package:flutter/material.dart";
import "./qoute.dart";
import "./QuoteCard.dart";

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(quote: "hello there", author: "ikw"),
    Quote(quote: "hey man", author: "kiw"),
    Quote(quote: "what up", author: "wik")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text("Beautiful Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
              children: quotes
                  .map((quote) => QuoteCard(
                      quote: quote,
                      delete: () {
                        setState(() {
                          quotes.remove(quote);
                        });
                      }))
                  .toList()),
        ));
  }
}
