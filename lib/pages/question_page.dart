import 'package:flutter/material.dart';
import 'package:flutter_zhiho/pages/reply_page.dart';

import '../global_config.dart';
import '../home/common.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuestionPage();
  }

}

class _QuestionPage extends State<QuestionPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Color strColor = GlobalConfig.searchBackgroundColor;
    Color strColor = Colors.white;

    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Common.searchInput(context),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 2.0, top: 8.0, bottom: 8.0, right: 2.0),
                color: GlobalConfig.cardBackgroundColor,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      margin: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: strColor,
                        ), child: Text("物理學"),
                        //color: GlobalConfig.searchBackgroundColor,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      margin: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: strColor,
                        ),
                        child: Text("三體(書籍)"),
                        //color: GlobalConfig.searchBackgroundColor,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: strColor,
                        ),
                        child: Text("腦洞(網路用語)"),
                        //color: GlobalConfig.searchBackgroundColor,
                      ),
                    )
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                alignment: Alignment.topLeft,
                color: GlobalConfig.cardBackgroundColor,
                child: Text(
                  "《三體》裡的水滴有可能被製造出來嗎?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0, height: 1.3,
                    color: GlobalConfig.dark == true ? Colors.white70 : Colors.black,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                decoration: BoxDecoration(
                    border: BorderDirectional(bottom: BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12)),
                    color: GlobalConfig.cardBackgroundColor
                ),
                child: Text(
                    "如果，只考慮其延長強相互作用力的特性，而不考慮其直角轉彎的特性，那麼水滴能被製造出來嗎？換句話說，強相互作用力能夠以影響微觀物理量的方式延長嗎？",
                    style: TextStyle(height: 1.4, fontSize: 16.0, color: GlobalConfig.fontColor), textAlign: TextAlign.start
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: GlobalConfig.cardBackgroundColor
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: BorderDirectional(end: BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                        ),
                        child: ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.group_add),
                          label: Text("邀請回答"),
                          //textTheme: ButtonTextTheme.accent,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: BorderDirectional(end: BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                        ),
                        child: ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.brush),
                          label: Text("寫回答"),
                          //textTheme: ButtonTextTheme.accent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Text("173個回答", style: TextStyle(color: GlobalConfig.fontColor)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: PopupMenuButton(
                          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                            PopupMenuItem<String>(
                                value: '質量',
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text('按質量排序'),
                                      Icon(Icons.check, color: Colors.blue,)
                                    ],
                                  ),
                                )
                            ),
                            PopupMenuItem<String>(
                                value: '時間',
                                child: Text('按時間排序')
                            )
                          ],
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text("按質量排序", style: TextStyle(color: GlobalConfig.fontColor)),
                                Icon(Icons.keyboard_arrow_down, color: GlobalConfig.fontColor)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                  color: GlobalConfig.cardBackgroundColor,
                  margin: const EdgeInsets.only(bottom: 5.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ReplyPage();
                          }
                      ));
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: const CircleAvatar(
                                    backgroundImage: NetworkImage("https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"),
                                    radius: 11.0
                                ),
                              ),
                              Text(" 游牧由", style: TextStyle(color: GlobalConfig.fontColor))
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 6.0, bottom: 14.0),
                            alignment: Alignment.topLeft,
                            child: Text(
                                "第一，幾年前我跟一個985211級大學的物理類學科教授聊過這個問題。他很嚴肅的表示，使用強互作用力為工具在原子角度加工出這種水平的材料，對人類目前的物理...",
                                style: TextStyle(height: 1.3, color: GlobalConfig.fontColor)
                            )
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Text("1K 贊同 · 262 評論 · 10 天前", style: TextStyle(color: GlobalConfig.fontColor))
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}