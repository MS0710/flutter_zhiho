import 'package:flutter/material.dart';

import '../global_config.dart';

class SearchPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchPage();
  }

}

class _SearchPage extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var body = MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: searchInput(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
                alignment: Alignment.topLeft,
                child: const Text(
                  "比乎熱搜",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),

              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                    alignment: Alignment.topLeft,
                    child: Chip(
                      backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      label: ElevatedButton(
                        onPressed: () {  },
                        child: Text(
                          "汽車關稅下調",
                          style: TextStyle(color: GlobalConfig.fontColor),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 4.0, bottom: 16.0),
                    alignment: Alignment.topLeft,
                    child: Chip(
                      backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      label: ElevatedButton(
                        onPressed: (){},
                        child: Text(
                          "李彥宏傳聞闢謠",
                          style: TextStyle(color: GlobalConfig.fontColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                    alignment: Alignment.topLeft,
                    child: Chip(
                      label: ElevatedButton(onPressed: (){}, child: Text("小米8",style: TextStyle(color: GlobalConfig.fontColor))),
                      backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                    alignment: Alignment.topLeft,
                    child: Chip(
                      label: ElevatedButton(onPressed: (){}, child: Text("超時空同居",style: TextStyle(color: GlobalConfig.fontColor))),
                      backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                    ),
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                alignment: Alignment.topLeft,
                child: const Text("搜尋紀錄", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
              ),

              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                padding: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                    border: BorderDirectional(bottom: BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 12.0),
                      child: Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                    ),
                    Expanded(
                      child: Text("業餘興趣", style: TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                    ),
                    Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0)
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                padding: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                    border: BorderDirectional(bottom: BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 12.0),
                      child: Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                    ),
                    Expanded(
                      child: Text("三體", style: TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                    ),
                    Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0)
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                padding: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                    border: BorderDirectional(bottom: BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 12.0),
                      child: Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                    ),
                    Expanded(
                      child: Text("人類未來", style: TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                    ),
                    Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return body;
  }

  Widget searchInput() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 60.0,
            child: ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: const Text(""),
            ),
          ),

          Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration.collapsed(
                hintText: "搜索比乎內容",
                hintStyle: TextStyle(color: GlobalConfig.fontColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

}