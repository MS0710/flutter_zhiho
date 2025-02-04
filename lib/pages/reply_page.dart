import 'package:flutter/material.dart';
import 'package:flutter_zhiho/pages/question_page.dart';

import '../global_config.dart';
import '../home/common.dart';

class ReplyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ReplyPage();
  }

}

class _ReplyPage extends State<ReplyPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                decoration: const BoxDecoration(
                    border: BorderDirectional(bottom: BorderSide(color: Colors.white10))
                ),
                child: ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(GlobalConfig.cardBackgroundColor),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return QuestionPage();
                        }
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "你認為《三體》中最牛的文明是？",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0, height: 1.3,
                        color: GlobalConfig.dark == true? Colors.white70 : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                  decoration: BoxDecoration(
                    color: GlobalConfig.cardBackgroundColor,
                  ),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                              border: BorderDirectional(end: BorderSide(color: Colors.white10))
                          ),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: const Icon(Icons.brush),
                            label: const Text("寫回答"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                            ),
                              //textTheme: ButtonTextTheme.accent,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return QuestionPage();
                                  }
                              ));
                            },
                            child: const Text("查看全部10000個回答 > "),
                          ),
                        ),
                      )
                    ],
                  )
              ),

              Container(
                decoration: BoxDecoration(
                    color: GlobalConfig.cardBackgroundColor,
                    border: const BorderDirectional(bottom: BorderSide(color: Colors.white10))
                ),
                child: ListTile(
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage("https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"),
                        radius: 20.0
                    ),
                    title: const Text("Flutter"),
                    subtitle: const Text("人生如逆旅，我亦是行人"),
                    trailing: ElevatedButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.add, color: Colors.white),
                      label: const Text("關注", style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                      //color: Colors.blue,
                    ),
                ),
              ),

              Container(
                margin: const EdgeInsets.all(16.0),
                child: Text(
                    "回歸運動\n\n三體定義的黑暗森林的宇宙格局，就是文明相互攻擊和毀滅，越高級的，越明白藏好自己做好清理，絕不做探測對方文明的愚蠢行為。 \n\n然而歸還運動跳出了這個黑暗森林法則，不玩黑暗森林打擊，不但探測別的宇宙文明，而且還深入了解對方文明，而且是全宇宙的所有文明。 \n\n這是多麼自信的科技實力呀，才能跳出黑暗森林的生存法則呀",
                    style: TextStyle(
                      height: 1.4,
                      fontSize: 16.0,
                      color: GlobalConfig.fontColor,
                    ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50.0,
            color: GlobalConfig.cardBackgroundColor,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 2.0),
                  height: 30.0,
                  child: ElevatedButton.icon(
                    onPressed: (){},
                    label: const Text("讚同 10 K"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: GlobalConfig.searchBackgroundColor,
                    ),
                    //color: GlobalConfig.searchBackgroundColor,
                    icon: const Icon(Icons.arrow_drop_up),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 2.0),
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                    color: GlobalConfig.searchBackgroundColor,
                  ),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down),padding: const EdgeInsets.all(0.0)),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){ print("icon");},
                          icon: Container(
                            margin: const EdgeInsets.only(),
                            height: 32.0,
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.favorite, size: 18.0, color: GlobalConfig.fontColor,),
                                Text("感謝", style: TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                              ],
                            ),
                          )
                      ),

                      IconButton(
                        onPressed: (){ print("icon");},
                        icon: Container(
                          margin: const EdgeInsets.only(),
                          height: 32.0,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.star, size: 18.0, color: GlobalConfig.fontColor,),
                              Text("收藏", style: TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                            ],
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: (){ print("icon");},
                        icon: Container(
                          margin: const EdgeInsets.only(),
                          height: 32.0,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.mode_comment, size: 18.0, color: GlobalConfig.fontColor,),
                              Text("345", style: TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}