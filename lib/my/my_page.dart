import 'package:flutter/material.dart';

import '../global_config.dart';
import '../pages/search_page.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyPage();
  }

}

class _MyPage extends State<MyPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: GlobalConfig.themeData,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: barSearch(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              myInfoCard(),
              myServiceCard(),
              settingCard(),
              videoCard(),
              ideaCard(),

            ],
          ),
        ),
      ),
    );
  }

  Widget barSearch() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        border: Border.all(
          color: GlobalConfig.searchBorderColor,
        ),
        color: Colors.transparent,
      ),
      child: ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return SearchPage();
              }
          ));
        },
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 26.0),
              child: Icon(
                Icons.search,
                color: GlobalConfig.fontColor,
                size: 18.0,
              ),
            ),
            Expanded(
              child: Text(
                "搜索知呼內容",
                style: TextStyle(
                color: GlobalConfig.fontColor,
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
              child: ElevatedButton(
                onPressed: (){},
                child: Icon(
                  Icons.settings_overscan,
                  color: GlobalConfig.fontColor,
                  size: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myInfoCard() {
    return Container(
      color: GlobalConfig.cardBackgroundColor,
      //color: Colors.transparent,
      margin: const EdgeInsets.only(top: 10.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            decoration: BoxDecoration(
              color: GlobalConfig.dark == true ? Colors.transparent : const Color(0xFFF5F5F5),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
            child: ElevatedButton(
                onPressed: (){},
                child: ListTile(
                  leading: const CircleAvatar(
                      backgroundImage: NetworkImage("https://pic1.zhimg.com/v2-ec7ed574da66e1b495fcad2cc3d71cb9_xl.jpg"),
                      radius: 20.0
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(bottom: 2.0),
                    child: const Text("learner"),
                  ),
                  subtitle: Container(
                    margin: const EdgeInsets.only(top: 2.0),
                    child: const Text("查看或編輯個人主頁"),
                  ),
                )
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: (MediaQuery.of(context).size.width - 6.0) / 4,
                child: ElevatedButton(
                  onPressed: (){},
                  child: SizedBox(
                    height: 50.0,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "57",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: GlobalConfig.fontColor,
                          ),
                        ),
                        Text(
                          "我的創作",
                          style: TextStyle(
                            fontSize: 10.0,
                            color: GlobalConfig.fontColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: 14.0,
                width: 1.0,
                decoration: BoxDecoration(
                  border: BorderDirectional(
                      start: BorderSide(color: GlobalConfig.dark == true ?  Colors.white : Colors.black12, width: 1.0)
                  ),
                ),
              ),

              SizedBox(
                width: (MediaQuery.of(context).size.width - 6.0) / 4,
                child: ElevatedButton(
                  onPressed: (){},
                  child: SizedBox(
                    height: 50.0,
                    child: Column(
                      children: <Widget>[
                        Text("210", style: TextStyle(fontSize: 16.0, color: GlobalConfig.fontColor),),
                        Text("關注", style: TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: 14.0,
                width: 1.0,
                decoration: BoxDecoration(
                  border: BorderDirectional(
                      start: BorderSide(color: GlobalConfig.dark == true ?  Colors.white : Colors.black12, width: 1.0)
                  ),
                ),
              ),

              SizedBox(
                width: (MediaQuery.of(context).size.width - 6.0) / 4,
                child: ElevatedButton(
                  onPressed: (){},
                  child: SizedBox(
                    height: 50.0,
                    child: Column(
                      children: <Widget>[
                        Text("18", style: TextStyle(fontSize: 16.0, color: GlobalConfig.fontColor),),
                        Text("我的收藏", style: TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: 14.0,
                width: 1.0,
                decoration: BoxDecoration(
                  border: BorderDirectional(
                    start: BorderSide(color: GlobalConfig.dark == true ?  Colors.white : Colors.black12, width: 1.0),
                  ),
                ),
              ),

              SizedBox(
                width: (MediaQuery.of(context).size.width - 6.0) / 4,
                child: ElevatedButton(
                  onPressed: (){},
                  child: SizedBox(
                    height: 50.0,
                    child: Column(
                      children: <Widget>[
                        Text("33", style: TextStyle(fontSize: 16.0, color: GlobalConfig.fontColor),),
                        Text("最近瀏覽", style: TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }

  Widget myServiceCard() {
    return Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: const CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.book, color: Colors.white),
                          ),
                        ),
                        Text("我的書架", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0),)
                      ],
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: const CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.flash_on, color: Colors.white),
                          ),
                        ),
                        Text("我的 Live", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0))
                      ],
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: const CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Color(0xFFA68F52),
                            child: Icon(Icons.free_breakfast, color: Colors.white),
                          ),
                        ),
                        Text("私家課", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0))
                      ],
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: const CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Color(0xFF355A9B),
                            child: Icon(Icons.attach_money, color: Colors.white),
                          ),
                        ),
                        Text("付費諮詢", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0))
                      ],
                    )
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 6.0),
                            child: const CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Color(0xFF088DB4),
                              child: Icon(Icons.shop, color: Colors.white),
                            ),
                          ),
                          Text("已購", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0),)
                        ],
                      )
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 6.0),
                            child: const CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.radio, color: Colors.white),
                            ),
                          ),
                          Text("餘額禮卷", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0))
                        ],
                      )
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 6.0),
                            child: const CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Color(0xFF029A3F),
                              child: Icon(Icons.wifi_tethering, color: Colors.white),
                            ),
                          ),
                          Text("服務", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0))
                        ],
                      )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget settingCard() {
    return Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            child: ElevatedButton(
                onPressed: (){},
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      child: const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Color(0xFFB88800),
                        child: Icon(Icons.invert_colors, color: Colors.white),
                      ),
                    ),
                    Text("社區建設", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0)),
                  ],
                )
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            child: ElevatedButton(
                onPressed: (){},
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      child: const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Color(0xFF63616D),
                        child: Icon(Icons.golf_course, color: Colors.white),
                      ),
                    ),
                    Text("反饋", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0)),
                  ],
                )
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            child: ElevatedButton(
                onPressed: (){
                  setState((){
                    if (GlobalConfig.dark == true) {
                      GlobalConfig.themeData = ThemeData(
                        primaryColor: Colors.white,
                        scaffoldBackgroundColor: const Color(0xFFEBEBEB),
                      );
                      GlobalConfig.searchBackgroundColor = const Color(0xFFEBEBEB);
                      GlobalConfig.cardBackgroundColor = Colors.white;
                      GlobalConfig.fontColor = Colors.black54;
                      GlobalConfig.dark = false;
                    } else {
                      GlobalConfig.themeData = ThemeData.dark();
                      GlobalConfig.searchBackgroundColor = Colors.white10;
                      GlobalConfig.cardBackgroundColor = const Color(0xFF222222);
                      GlobalConfig.fontColor = Colors.white30;
                      GlobalConfig.dark = true;
                    }
                  });
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: const Color(0xFFB86A0D),
                        child: Icon(GlobalConfig.dark == true ? Icons.wb_sunny : Icons.brightness_2, color: Colors.white),
                      ),
                    ),
                    Text(GlobalConfig.dark == true ? "日間模式" : "夜間模式", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0)),
                  ],
                )
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            child: ElevatedButton(
                onPressed: (){},
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      child: const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Color(0xFF636269),
                        child: Icon(Icons.perm_data_setting, color: Colors.white),
                      ),
                    ),
                    Text("設置", style: TextStyle(color: GlobalConfig.fontColor, fontSize: 10.0)),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }

  Widget videoCard() {
    return Container(
        color: GlobalConfig.cardBackgroundColor,
        margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
        padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(left: 16.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Color(0xFFB36905),
                      child: Icon(Icons.videocam, color: Colors.white),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: const Text("視頻創作", style: TextStyle(fontSize: 18.0),),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: const Text("拍一個", style: TextStyle(color: Colors.blue),)
                    )
                  ],
                )
            ),
            Container(
              margin: const EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: const EdgeInsets.only(right: 6.0),
                        child: AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: Container(
                              foregroundDecoration:const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://pic2.zhimg.com/50/v2-5942a51e6b834f10074f8d50be5bbd4d_400x224.jpg"),
                                    centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(6.0))
                              ),
                            )
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: Container(
                              foregroundDecoration:const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://pic3.zhimg.com/50/v2-7fc9a1572c6fc72a3dea0b73a9be36e7_400x224.jpg"),
                                    centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(6.0))
                              ),
                            )
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: Container(
                              foregroundDecoration:const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://pic4.zhimg.com/50/v2-898f43a488b606061c877ac2a471e221_400x224.jpg"),
                                    centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(6.0))
                              ),
                            )
                        )
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: Container(
                              foregroundDecoration:const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://pic1.zhimg.com/50/v2-0008057d1ad2bd813aea4fc247959e63_400x224.jpg"),
                                    centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(6.0))
                              ),
                            )
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }

  Widget ideaCard() {
    return Container(
        color: GlobalConfig.cardBackgroundColor,
        margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
        padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(left: 16.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.all_inclusive, color: Colors.white),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: const Text("想法", style: TextStyle(fontSize: 18.0),),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: const Text("去往想法首頁", style: TextStyle(color: Colors.blue),),
                    )
                  ],
                )
            ),
            Container(
              margin: const EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            color: GlobalConfig.searchBackgroundColor,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("蘋果 WWDC 2018 正在舉行", style: TextStyle(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 6.0),
                                        child: Text("軟件更新預料之中，硬件之謎...", style: TextStyle(color: GlobalConfig.fontColor),),
                                      )
                                  )

                                ],
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.all(10.0),
                                width: MediaQuery.of(context).size.width / 5,
                                child: AspectRatio(
                                    aspectRatio: 1.0 / 1.0,
                                    child: Container(
                                      foregroundDecoration:const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://pic2.zhimg.com/50/v2-55039fa535f3fe06365c0fcdaa9e3847_400x224.jpg"),
                                            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(6.0))
                                      ),
                                    )
                                )
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            color: GlobalConfig.searchBackgroundColor,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("此刻你的桌子是甚麼樣子？", style: TextStyle(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 6.0),
                                        child: Text("曬一曬你的書桌/辦公桌", style: TextStyle(color: GlobalConfig.fontColor),),
                                      )
                                  )

                                ],
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.all(10.0),
                                width: MediaQuery.of(context).size.width / 5,
                                child: AspectRatio(
                                    aspectRatio: 1.0 / 1.0,
                                    child: Container(
                                      foregroundDecoration:const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://pic3.zhimg.com/v2-b4551f702970ff37709cdd7fd884de5e_294x245|adx4.png"),
                                            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(6.0))
                                      ),
                                    )
                                )
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            color: GlobalConfig.searchBackgroundColor,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("關於高考你印象最深的是...", style: TextStyle(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 6.0),
                                        child: Text("聊聊你的高三生活", style: TextStyle(color: GlobalConfig.fontColor),),
                                      )
                                  )

                                ],
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.all(10.0),
                                width: MediaQuery.of(context).size.width / 5,
                                child: AspectRatio(
                                    aspectRatio: 1.0 / 1.0,
                                    child: Container(
                                      foregroundDecoration:const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://pic2.zhimg.com/50/v2-ce2e01a047e4aba9bfabf8469cfd3e75_400x224.jpg"),
                                            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(6.0))
                                      ),
                                    )
                                )
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            color: GlobalConfig.searchBackgroundColor,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("夏天一定要吃的食物有哪些", style: TextStyle(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 6.0),
                                        child: Text("最適合夏天吃的那種", style: TextStyle(color: GlobalConfig.fontColor),),
                                      )
                                  )

                                ],
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.all(10.0),
                                width: MediaQuery.of(context).size.width / 5,
                                child: AspectRatio(
                                    aspectRatio: 1.0 / 1.0,
                                    child: Container(
                                      foregroundDecoration:const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://pic1.zhimg.com/50/v2-bb3806c2ced60e5b7f38a0aa06b89511_400x224.jpg"),
                                            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(6.0))
                                      ),
                                    )
                                )
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }

}