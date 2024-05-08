import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() => runApp(MaterialApp(home: CalculateCard()));

// adding counter
class CalculateCard extends StatefulWidget {
  const CalculateCard({super.key});

  @override
  State<CalculateCard> createState() => _CalculateCardState();
}

class _CalculateCardState extends State<CalculateCard> {
  int calculating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          title: Container(
            child: Text(
              'mako',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            calculating += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/1.jpg"),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Chuks',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Current Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '$calculating',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'mako234@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2.0,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
