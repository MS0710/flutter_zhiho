import 'package:flutter/material.dart';

import '../global_config.dart';
import '../pages/reply_page.dart';
import 'article.dart';

class Follow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Follow();
  }

}

class _Follow extends State<Follow>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var body = Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: [
          wordsCard(articleList[0]),
          wordsCard(articleList[1]),
          wordsCard(articleList[2]),
          billboard(),
          wordsCard(articleList[3]),

        ],
      ),
    );
    
    return SingleChildScrollView(
      child: body,
    );
  }

  Widget wordsCard(Article article) {
    Widget markWidget;

    if (article.imgUrl == null) {
      markWidget = Text(
          article.mark,
          style: TextStyle(height: 1.3, color: GlobalConfig.fontColor)
      );
    }else{
      markWidget = Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              article.mark,
              style: TextStyle(height: 1.3, color: GlobalConfig.fontColor),
            ),
          ),

          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 3.0 / 2.0,
              child: Container(
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(article.imgUrl!,),
                    centerSlice: const Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                ),
              ),
            ),
          ),

        ],
      );
    }


    return Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return ReplyPage();
              }
          ));
        },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(article.headUrl),
                    radius: 11.0,
                  ),

                  Text(
                    "  " + article.user + " " + article.action + " · " + article.time,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 6.0, bottom: 2.0),
              alignment: Alignment.topLeft,
              child: Text(
                article.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0, height: 1.3,
                  color: GlobalConfig.dark == true? Colors.white70 : Colors.black,
                ),

              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 6.0),
              alignment: Alignment.topLeft,
              child: markWidget,
            ),

            Container(
              padding: const EdgeInsets.only(),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      article.agreeNum.toString() + " 讚同 · " + article.commentNum.toString() + "評論",
                      style: TextStyle(color: GlobalConfig.fontColor),
                    ),
                  ),

                  PopupMenuButton(
                    icon:  Icon(
                      Icons.linear_scale,
                      color: GlobalConfig.fontColor,
                    ),
                    itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                      const PopupMenuItem(
                        value: '選項一的值',
                        child: Text('屏蔽這個問題'),
                      ),
                      const PopupMenuItem(
                        value: '選項二的值',
                        child: Text('取消關注 learner'),
                      ),
                      const PopupMenuItem(
                        value: '選項三的值',
                        child: Text("舉報"),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );

  }

  Widget billboard() {
    return Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      color: GlobalConfig.cardBackgroundColor,
      child: ElevatedButton(
        onPressed: (){},
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage("https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg"),
                    radius: 11.0,
                  ),

                  Text("  對啊網", style: TextStyle(color: GlobalConfig.fontColor),),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 6.0, bottom: 2.0),
              alignment: Alignment.topLeft,
              child: Text(
                "考過CPA，非名牌大學也能進名企",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0, height: 1.3,
                  color: GlobalConfig.dark == true? Colors.white70 : Colors.black,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 6.0, bottom: 14.0),
              alignment: Alignment.topLeft,
              child: AspectRatio(
                aspectRatio: 3.0 / 1.0,
                child: Container(
                  foregroundDecoration:const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg"),
                        centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6.0))
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 3.0, right: 3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: GlobalConfig.fontColor),
                      borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                    ),
                    child: Text("廣告", style: TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor)),
                  ),

                  Expanded(
                    child: Text(
                      "  查看詳情",
                      style: TextStyle(color: GlobalConfig.fontColor),
                    ),
                  ),

                  Icon(Icons.clear, color: GlobalConfig.fontColor),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}