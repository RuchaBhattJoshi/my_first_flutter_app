import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int flutterLevel = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(

        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            flutterLevel +=1;
          });

        },
        child:Icon(Icons.add) ,
        backgroundColor: Colors.grey[850],

      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pic.jpg'),
                radius: 40.0,
              ),
            ),
            SizedBox(height: 20.0),
            Divider(
              height: 2.0,
              color: Colors.grey,

            ),

            SizedBox(height: 20.0),
            Text(
              'NAME:',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0

            ),

            ),

            SizedBox(height: 10.0),
            Text(
              'Rucha Bhatt Joshi',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0 ,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT FLUTTER LEVEL:',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0

              ),

            ),

            SizedBox(height: 10.0),
            Text(
              '$flutterLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0 ,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[

                Icon(

                  Icons.email,
                  color: Colors.grey[400],

                ),
                SizedBox(width: 10.0),
                Text(
                  'joshirucha0807@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                  ),
                )

              ],

            )
          ],

        )

      )

    );
  }
}

