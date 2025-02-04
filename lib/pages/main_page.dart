import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhiho/pages/home_page.dart';

import '../global_config.dart';
import '../idea/idea_page.dart';
import '../index/navigation_icon_view.dart';
import '../market/market_page.dart';
import '../my/my_page.dart';
import '../notice/notice_page.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainPage();
  }

}

class _MainPage extends State<MainPage> with TickerProviderStateMixin{
  int _currentIndex = 0;
  late List<NavigationIconView> _navigationViews;
  late List<StatefulWidget> _pageList;
  late StatefulWidget _currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
        icon: const Icon(Icons.assignment),
        title: "首頁",
        vsync: this,
      ),
      NavigationIconView(
        icon: const Icon(Icons.all_inclusive),
        title: "想法",
        vsync: this,
      ),
      NavigationIconView(
        icon: const Icon(Icons.add_shopping_cart),
        title: "市場",
        vsync: this,
      ),
      NavigationIconView(
        icon: const Icon(Icons.add_alert),
        title: "通知",
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.perm_identity),
        title: "我的",
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }


    _pageList = <StatefulWidget>[
      HomePage(),
      IdeaPage(),
      MarketPage(),
      NoticePage(),
      MyPage(),
    ];
    _currentPage = _pageList[_currentIndex];


  }

  void _rebuild() {
    setState((){});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      items: _navigationViews.map((NavigationIconView navigationIconView) => navigationIconView.item)
          .toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState((){
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );

    return MaterialApp(
      theme: GlobalConfig.themeData,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: AppBar(title: Text("mainPage"),),
        body: Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }

}