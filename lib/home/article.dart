class Article {
  String headUrl;
  String user;
  String action;
  String time;
  String title;
  String mark;
  String? imgUrl;
  int agreeNum;
  int commentNum;

  Article(this.headUrl, this.user, this.action, this.time, this.title, this.mark, this.agreeNum, this.commentNum, {this.imgUrl});
}

List<Article> articleList = [
  Article(
      "https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg",
      "learner",
      "讚同了回答",
      "2小時前",
      "在三體中，羅輯為什麼會把控制權交給程心，難道他沒有推測過後果嗎？",
      "因為羅輯遵守了人類倫理。這個倫理大概就叫民主。大劉其實是個典型的精英主義者，在他筆下...",
      32, 10,
      imgUrl: "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"
  ),
  Article(
    "https://pic4.zhimg.com/50/v2-9a3cb5d5ee4339b8cf4470ece18d404f_s.jpg",
    "learner",
    "回答了問題",
    "5小時前",
    "我的手機系統是安卓。無意間發現自己的螢幕被人監控，請問要如何才能徹底擺脫被監控的處境呢？",
    "檢查一下你手機裡是不是被人裝了什麼軟體，把你不認識的非系統軟體刪掉。不會刪就去找手機店裡的小哥，為什麼這麼多人...",
    38, 13,
  ),
  Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "回答了問題",
      "7小時前",
      "如何評估2018年安徽省程序設計競賽？",
      "帶著政治任務和壓力去打了比賽，所幸最後被高中生抬了一手。榜可以見另外某回答。大概經歷就是前...",
      38, 13,
      imgUrl: "https://pic4.zhimg.com/v2-a7493d69f0d8f849c6345f8f693454f3_200x112.jpg"
  ),
  Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "回答了問題",
      "7小時前",
      "極致的文明是什麼樣的？會真的像黑暗森林法則一樣對其他低等生物進行屠殺嗎？",
      "最喜歡的人物是章北海和維德但最喜歡的情節卻是這一段，地球上的人承諾給他們鮮花和榮譽...",
      38, 13,
      imgUrl: "https://pic3.zhimg.com/v2-b67be50be51e2e6d6112a64528683b09_b.jpg"
  )
];