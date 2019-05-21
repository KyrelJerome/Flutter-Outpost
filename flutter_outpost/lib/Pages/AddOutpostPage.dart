import 'package:flutter/material.dart';

const namePresetString = "Name";

class AddOutpostPage extends StatefulWidget {
  @override
  _AddOutpostPageState createState() => _AddOutpostPageState();
}

class _AddOutpostPageState extends State<AddOutpostPage> {
  String name;
  String label;
  String organization;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
              child: Text("Outpost",
                  style: Theme.of(context).textTheme.display1))),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: buildNavigationBarItems(),
        backgroundColor: Colors.green[400],
      ),
      body: PageView(
              children: buildStages(),
      ),
    );
  }
  List<Widget> buildStages(){
     return [buildOutpostForm(),buildReportsForm(),buildOverviewForm()];
  }
  List<BottomNavigationBarItem> buildNavigationBarItems() {
    List<String> templates = ["Outpost", "Reports", "Scorables", "Overview"];
    List<BottomNavigationBarItem> list = List();
    for (int i = 0; i < templates.length; i++) {
      list.add(
        BottomNavigationBarItem(
          icon: Text(i.toString()),
          backgroundColor: Colors.grey[100 * (4 - i)],
          title: Text(
            templates[i],
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    }
    return list;
  }

  Widget buildReportsForm(){
    
  }

  Widget buildOverviewForm(){

  }

  buildOutpostForm() {
    return Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    color: Colors.grey,
                    child: FlutterLogo(size: 40),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 4),
                    child: TextField(
                        //decoration: InputDecoration(helperText: "Data"),
                        style: Theme.of(context).textTheme.subtitle),
                  ),
                ),
              ],
            ),
            Text("Organization", style: Theme.of(context).textTheme.caption),
            Container(
              margin: EdgeInsets.all(0),
              child: TextField(),
            ),
            Text("Description", style: Theme.of(context).textTheme.caption),
            Container(
              child: TextField(),
            ),
            Text("Label", style: Theme.of(context).textTheme.caption),
            Container(
              child: TextField(),
            ),
          ],
        ),
      );
  }
}
