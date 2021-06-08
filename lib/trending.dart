import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[200],
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
                color: Colors.blue[50],
                child: Center(child: Text('Trending: ${index.toString()}')),
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
