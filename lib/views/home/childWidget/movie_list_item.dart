import 'package:flutter/material.dart';
import 'package:douban_movies/models/home_model.dart';

class MovieListItem extends StatelessWidget {
  final MovieItem item;
  const MovieListItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 10, color: Color(0xffe2e2e2))
        )
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          getRankWidget(),
          const SizedBox(height: 10),
          centerContent(),
          const SizedBox(height: 10),
          getBottomName()
        ]
      )
    );
  }

  // 顶部rank排名
  Widget getRankWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Text('No.${item.rank}', style: const TextStyle(fontSize: 18, color:  Color.fromARGB(255, 131, 95, 36))),
    );
  }

  // 底部内容
  Widget getBottomName() {
    return Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
        color: const Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(item.info.pingjia, style: const TextStyle(fontSize: 18, color: Colors.black54))
    );
  }

  // 中间部分内容
  Widget centerContent() {
    return Container(
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          imageShow(),
          getDesc(),
          Text('分割线'),
          wishBtn()
        ],
      ),
    );
  }

  // 图片显示
  Widget imageShow() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
        child: Image.network(item.info.imgurl, height: 150)
    );
  }
  
  // 想看部分
  Widget wishBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/home/wish.png', width: 32),
          const SizedBox(height: 8),
          const Text('想看', style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 235, 170, 60)))
        ],
      ),
    );
  }

  // 详情描述
  Widget getDesc() {
    return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              movieName(),
              getRatingWidget(),
              getMovieIntroduce()
            ],
          ),
        )
    );
  }

  // 电影名称
  Widget movieName() {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: <Widget>[
        const Icon(Icons.play_circle_outline, color: Colors.redAccent),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "      " + item.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextSpan(text: "(${item.info.pingfen})", style: TextStyle(fontSize: 18, color: Colors.black54))
            ]
          ),
          maxLines: 2,
        )
      ],
    );
  }

  Widget getRatingWidget() {
    return Text('评分');
  }

  Widget getMovieIntroduce() {
    final String intro = item.info.yanyuan;
    return Text(intro, maxLines: 3, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 16),);
  }
}

