import 'package:flutter/material.dart';
import 'package:ui_task/const/api_const.dart';
import 'package:ui_task/const/colors_const.dart';

class Tokens extends StatefulWidget {
  const Tokens({Key? key}) : super(key: key);

  @override
  State<Tokens> createState() => _TokensState();
}

class _TokensState extends State<Tokens> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tokensList.length,
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 2,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: expiredBackgroundColor,
              backgroundImage: NetworkImage(tokensList[index]['icon']),
            ),
            title: Text(
              tokensList[index]['name'],
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            subtitle: Text(
              tokensList[index]['amount'],
              style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
