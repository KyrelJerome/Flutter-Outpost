import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_outpost/Pages/AddOutpostPage.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "OUTPOST",
            style: TextStyle(
              color: Colors.blueGrey[900],
              letterSpacing: 4,
              fontWeight: FontWeight.bold,
              fontSize: 40,
              fontFamily: 'Raleway',
              fontStyle: FontStyle.italic,
              // decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  child: Text("Welcome to Outpost!"),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(40),
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddOutpostPage()),
                              ),
                          child: Text(
                            "Host",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ClipOval(
                        child: RaisedButton(
                          padding: EdgeInsets.all(32),
                          onPressed: () {},
                          child: Text(
                            "Join",
                            style: TextStyle(
                              fontSize: 30,
                            ),
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
      ),
    );
  }
}
