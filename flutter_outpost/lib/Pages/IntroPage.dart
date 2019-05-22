import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_outpost/Pages/AddOutpostPage.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Center(
          child: Text(
            "Outpost",
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),*/
      body: Container(
        color: Colors.white,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  child: Text(
                    "OUTPOST",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      fontFamily: 'Raleway',
                      fontStyle: FontStyle.italic,
                      //decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: ClipOval(
                    //borderRadius: BorderRadius.circular(100),
                    child: FlatButton(
                      padding: EdgeInsets.all(40),
                      color: Colors.blueGrey[700],
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddOutpostPage()),
                          ),
                      child: Text(
                        "Host",
                        style: TextStyle(color: Colors.white, fontSize: 48),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: ClipOval(
                    //borderRadius: BorderRadius.circular(16),
                    child: FlatButton(
                      padding: EdgeInsets.all(32),
                      color: Colors.blueGrey[600],
                      onPressed: () {},
                      child: Text(
                        "Join",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
