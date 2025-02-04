class Question {
  String order;
  String? rise;
  String title;
  String? mark;
  String hotNum;
  String imgUrl;

  Question(this.order, this.title, this.hotNum, this.imgUrl, {this.mark, this.rise});
}

List<Question> questionList = [
  Question("01", "了不起的新時代，世界競爭中的中國製造", "4427 萬熱度", "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"),
  Question("02", "一個女生怎樣才算見過世面？", "4157 萬熱度", "https://pic3.zhimg.com/50/v2-56dca99cd8718f9303d43b3015342ba7_hd.jpg", rise: "3", mark: "所谓世面，就是世界的每一面"),
  Question("03", "如果朱標沒死，削藩的話，朱棣會造反嗎？", "4009 萬熱度", "https://pic4.zhimg.com/v2-095d2b48970889b108247e6d2dd0fa6b_b.jpg"),
  Question("04", "如何編譯 Linux 內核？", "3110 萬熱度", "https://pic3.zhimg.com/80/v2-1ea1b0cf80c85b88893b2b97a94d7e71_hd.jpg", mark: "内核？呵呵"),
  Question("05", "如何看待將神話故事拍成電影這件事？", "2119 萬熱度", "https://pic4.zhimg.com/50/v2-267b1dda62f770bd2bd13cb545117b78_hd.jpg",rise: "3",)
];