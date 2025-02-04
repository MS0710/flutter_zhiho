import 'package:flutter/material.dart';

import '../global_config.dart';

class Common {
  static Widget searchInput(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      height: 36.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 60.0,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                  hintText: "搜尋比乎內容",
                  hintStyle: TextStyle(color: GlobalConfig.fontColor)
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.share, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          IconButton(icon: Icon(Icons.list, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
        ],
      ),
      //padding: new EdgeInsets.only(top:8.0, bottom: 8.0, left: 8.0, right: 8.0),
    );
  }
}
