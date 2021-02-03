import "package:flutter/material.dart";

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first app"),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),
      body: Center(
          child: RaisedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.mail
            ),
            label: Text("mail me"),
            color: Colors.amber
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
