import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red[200],
        body: Container(
          height: 100,
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(height: 1),
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 150,
                margin: EdgeInsets.symmetric(horizontal: 4),
                color: Colors.red[50],
                child: Center(child: Text('Market: ${index.toString()}')),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
