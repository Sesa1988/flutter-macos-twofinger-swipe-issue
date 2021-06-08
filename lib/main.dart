import 'package:flutter/material.dart';
import 'package:twofingerswipeissue/trending.dart';
import 'package:twofingerswipeissue/market.dart';
import 'package:twofingerswipeissue/market_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two-finger-swipe-issue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: MarketAppBar(),
          body: TabBarView(
            children: [
              Market(),
              Trending(),
            ],
          ),
        ),
      ),
    );
  }
}
