import 'package:flutter/material.dart';

import '../global_config.dart';

class AskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AskPage();
  }

}

class _AskPage extends State<AskPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var body = MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.clear, color: Colors.white70),
                label: const Text(""),
              ),
              const Expanded(
                child: Text("提問"),
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: const Text("下一步", style: TextStyle(color: Colors.white12))
              )
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "請輸入標題",
                      hintStyle: TextStyle(color: Colors.white70)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return body;
  }

}