import 'package:flutter/material.dart';
import 'package:douban_movies/models/home_model.dart';

class MovieListItem extends StatelessWidget {
  final MovieItem item;
  const MovieListItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.all(10),
        decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 10, color: Color(0xffe2e2e2))
        )
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          getRankWidget(),
          SizedBox(height: 10),
          Text('2'),
          Text('3')
        ]
      )
    );
  }

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
}

