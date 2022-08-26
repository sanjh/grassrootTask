import 'package:flutter/material.dart';
import 'package:ui_task/const/colors_const.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.80,
          height: 42,
          decoration: BoxDecoration(
            color: expiredBackgroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.only(left: 5),
          child: const TextField(
            autofocus: false,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              border: InputBorder.none,
              hintText: 'Search',
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon:
                const RotatedBox(quarterTurns: 1, child: Icon(Icons.sync_alt)))
      ],
    );
  }
}
