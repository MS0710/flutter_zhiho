import 'package:flutter/material.dart';

import '../global_config.dart';

class IdeaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IdeaPage();
  }

}

class _IdeaPage extends State<IdeaPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('想法'),
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