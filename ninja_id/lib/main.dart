import "package:flutter/material.dart";

void main() => runApp(MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            title: Text("Ninja ID card"),
            backgroundColor: Colors.grey[850],
            elevation: 0.0),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.grey[800],
          ),
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images.jpg"),
                  radius: 40.0,
                ),
              ),
              Divider(height: 60.0, color: Colors.grey[400]),
              Text("Name",
                  style: TextStyle(letterSpacing: 2.0, color: Colors.grey)),
              SizedBox(height: 10.0),
              Text("Chun-Li",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              Text("CURRENT NINJA LEVEL",
                  style: TextStyle(letterSpacing: 2.0, color: Colors.grey)),
              SizedBox(height: 10.0),
              Text("$ninjaLevel",
                  style: TextStyle(fontSize: 20.0, color: Colors.amberAccent)),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "chun.li@thenetninja.co.uk",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
