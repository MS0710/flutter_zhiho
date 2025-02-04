import 'package:flutter/material.dart';

import '../global_config.dart';
import 'article.dart';

class Recommend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Recommend();
  }

}

class _Recommend extends State<Recommend>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: Column(
          children: [
            commonCard(articleList[0]),
            commonCard(articleList[1]),
          ],
        ),
      ),
    );
  }

  Widget commonCard(Article article) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = Text(
        article.user + " :  " + article.mark,
        style: TextStyle(height: 1.3, color: GlobalConfig.fontColor),
      );
    } else {
      markWidget = Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Text(
              article.user + " :  " + article.mark,
              style: TextStyle(height: 1.3, color: GlobalConfig.fontColor),
            ),
          ),
          Expanded(
              flex: 1,
              child: AspectRatio(
                  aspectRatio: 3.0 / 2.0,
                  child:Container(
                    foregroundDecoration:BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(article.imgUrl!),
                        centerSlice: const Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                    ),
                  )
              )
          ),
        ],
      );
    }

    return Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: ElevatedButton(
        onPressed: (){},
        child: Column(
          children: [
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
                )
            ),

            Container(
                margin: const EdgeInsets.only(top: 6.0, bottom: 14.0),
                alignment: Alignment.topLeft,
                child: markWidget
            ),

            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        article.agreeNum.toString() + " 讚同 · " + article.commentNum.toString() + "評論",
                        style: TextStyle(color: GlobalConfig.fontColor),
                      ),
                  ),
                  Icon(
                    Icons.linear_scale,
                    color: GlobalConfig.fontColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

}