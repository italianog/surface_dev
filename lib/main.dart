import 'package:flutter/material.dart';
import 'package:surface_dev/detail_page.dart';
import 'package:surface_dev/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MyHomePage(),
        '/profile': (context) => ProfilePage(),
        '/detail': (context) => Detail(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo APP"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Go to Profile Page"),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            RaisedButton(
              child: Text("Go to Detail"),
              onPressed: () {
                Navigator.pushNamed(context, '/detail');
              },
            ),
          ],
        ),
      ),
    );
  }
}
