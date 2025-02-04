import 'package:flutter/material.dart';

import '../global_config.dart';

class MarketPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MarketPage();
  }

}

class _MarketPage extends State<MarketPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('市場'),
          actions: <Widget>[
            Container(
            )
          ],
        ),
        body: Center(
            child: null
        ),
      ),
    );
  }

}