
int counter = 1;

class Info {
  late String url;
  late String imgurl;
  late String yanyuan;
  late String pingfen;
  late String pingjia;

  Info.fromMap(Map<String, dynamic> json) {
    url = json['url'];
    imgurl = json['imgurl'];
    yanyuan = json['yanyuan'];
    pingfen = json['pingfen'];
    pingjia = json['pingjia'];
  }
}


class MovieItem {
  late String title;
  late int rank;
  late Info info;

  MovieItem.fromMap(Map<String, dynamic> json) {
    rank = counter++;
    title = json['title'];
    info = Info.fromMap(json['info']);
  }
}