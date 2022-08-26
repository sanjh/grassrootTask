import 'package:flutter/cupertino.dart';
import 'package:ui_task/const/api_const.dart';

import 'package:flutter/material.dart';

import '../../const/colors_const.dart';

// ignore: must_be_immutable
class HorizontalView extends StatefulWidget {
  const HorizontalView({
    Key? key,
  }) : super(key: key);

  @override
  State<HorizontalView> createState() => _HorizontalViewState();
}

class _HorizontalViewState extends State<HorizontalView> {
  bool _switchValue = true;

  int onSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: horizontalViewList.length,
        itemBuilder: (ctx, i) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  onSelectedIndex = i;
                });
              },
              child: scrollCard(
                id: i,
                isSelected: (onSelectedIndex == i) ? true : false,
              ));
        },
      ),
    );
    //
  }

  scrollCard({required int id, required bool isSelected}) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: lightlightGrey, width: 1)),
      child: Container(
        width: 135,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isSelected ? null : white,
          gradient: isSelected
              ? LinearGradient(
                  colors: [lightBlue.withOpacity(0.8), lightBlue],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: const [0.05, 0.4],
                  tileMode: TileMode.repeated,
                )
              : null,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(child: setWidget(id: id, isSelected: isSelected)),
              ],
            ),
            const Spacer(),
            Text(
              "${horizontalViewList[id]['title']}",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: isSelected ? white : black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  setWidget({required int id, required bool isSelected}) {
    if (id == 0 || id == 1 || id == 3) {
      return Icon(
        id == 0
            ? Icons.qr_code_2
            : id == 1
                ? Icons.person
                : Icons.close_fullscreen,
        color: isSelected ? Colors.white : Colors.black,
      );
    } else {
      return SizedBox(
        width: 40,
        height: 30,
        child: FittedBox(
          fit: BoxFit.fill,
          child: CupertinoSwitch(
            // thumbColor: Colors.grey,
            trackColor: Colors.grey,
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            },
          ),
        ),
      );
    }
  }
}
