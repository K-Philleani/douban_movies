class Info {
  late String url;
  late String imgurl;
  late String yanyuan;
  late String pingfen;
  late String pingjia;

  Info.fromMap(Map<String, dynamic> json) {
    this.url = json['url'];
    this.imgurl = json['imgurl'];
    this.yanyuan = json['yanyuan'];
    this.pingfen = json['pingfen'];
    this.pingjia = json['pingjia'];
  }
}


class MovieItem {
  late String title;
  late Info info;

  MovieItem.fromMap(Map<String, dynamic> json) {
    this.title = json['title'];
    this.info = Info.fromMap(json['info']);
  }
}