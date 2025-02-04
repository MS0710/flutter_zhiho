import 'package:flutter/material.dart';

import '../global_config.dart';

class NoticePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NoticePage();
  }

}

class _NoticePage extends State<NoticePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('通知'),
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