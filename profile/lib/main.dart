import 'package:flutter/material.dart';
import 'package:profile/widgets/info_card.dart';

const url = 'www.linkedin.com/in/lucas-oliveira-7524b41a5/';
const email = 'lucasfreak@gmail.com';
const phone = '+55 64993420591';
const location = 'Goiás, Brasil';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
              radius: 60, backgroundImage: AssetImage('images/luq.jpg')),
          Text(
            'Lucas Oliveira',
            style: TextStyle(
                fontSize: 53,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter-SemiBold'),
          ),
          Text(
            'Front-End Engineer',
            style: TextStyle(
                fontSize: 25,
                color: Colors.teal[50],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'JetBrainsMono'),
          ),
          SizedBox(
            height: 20,
            width: 200,
            child: Divider(
              color: Colors.teal.shade700,
            ),
          ),
          InfoCard(
              text: phone,
              icon: Icons.phone,
              onPressed: () {
                print('phone');
              }),
          InfoCard(
              text: email,
              icon: Icons.email,
              onPressed: () {
                print('email ');
              }),
          InfoCard(
              text: url,
              icon: Icons.web,
              onPressed: () {
                print('web ');
              }),
          InfoCard(
              text: location,
              icon: Icons.location_city,
              onPressed: () {
                print('location ');
              }),
        ],
      )),
    );
  }
}
