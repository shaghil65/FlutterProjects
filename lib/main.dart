import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "ID CARD",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (currLevel >= 10) {
              return null;
            } else {
              currLevel += 1;
            }
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/login.JPG'),
                backgroundColor: Colors.transparent,
                radius: 60.0,
              ),
            ),
            Divider(height: 60.0, color: Colors.grey[700]),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Muhammad Shaghil',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '$currLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'shaghilarshad@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
