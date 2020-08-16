import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    AssetImage('images/daniel_berry_profile_pic.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Daniel Berry',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.red.shade900,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'TULLAHOMA CITY ALDERMAN',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black54,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              FlatButton(
                onPressed: () {
                  launch(('tel://+18304777624'));
                },
                child: Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Call Daniel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  launch(('sms://+18304777624'));
                },
                child: Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.textsms,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Text Daniel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  launch('mailto:aldermanberry@tullahomatn.gov');
                },
                child: Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'aldermanberry@tullahomatn.gov',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  launch(('fb://page/829428654122154'));
                },
                child: Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                    ),
                    title: Text(
                      '@aldermanberry',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
