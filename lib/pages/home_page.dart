import 'package:flutter/material.dart';
import 'package:flutter_zhiho/home/follow.dart';
import 'package:flutter_zhiho/home/hot.dart';
import 'package:flutter_zhiho/home/recommend.dart';
import 'package:flutter_zhiho/pages/search_page.dart';

import '../global_config.dart';
import 'ask_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _HomePage();
  }

}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    var body = DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: barSearch(),
          bottom: TabBar(
            labelColor: GlobalConfig.dark == true ? const Color(0xFF63FDD9) : Colors.blue,
            unselectedLabelColor: GlobalConfig.dark == true ? Colors.white : Colors.black,
            tabs: [
              Tab(text: "關注"),
              Tab(text: "推薦"),
              Tab(text: "熱榜"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Follow(),
            Recommend(),
            Hot(),
          ],
        ),

      ),
    );

    
    /*return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
    );*/

    return body;
  }

  Widget barSearch() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        border: Border.all(
          color: GlobalConfig.searchBorderColor,
        ),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    }
                ));
              },
              icon: Icon(
                Icons.search,
                color: GlobalConfig.fontColor,
                size: 16.0,
              ),
              label: Text(
                "堅果R1攝像頭損壞",
                style: TextStyle(color: GlobalConfig.fontColor),
              ),
            ),
          ),

          Container(
            height: 30.0,
            width: 5.0,
            decoration: BoxDecoration(
              border: BorderDirectional(
                start: BorderSide(color: GlobalConfig.searchBorderColor, width: 2.0),
              ),
            ),
          ),

          Container(
            child: ElevatedButton.icon(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return AskPage();
                    }
                ));
              },
              icon: Icon(
                Icons.border_color,
                color: GlobalConfig.searchIconColor,
                size: 14.0,
              ),
              label: Text(
                "提問",
                style: TextStyle(color: GlobalConfig.searchIconColor),
              ),
            ),
          ),
        ],
      ),

    );
  }

}