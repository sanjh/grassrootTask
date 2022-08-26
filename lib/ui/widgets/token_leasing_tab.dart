import 'package:flutter/material.dart';
import 'package:ui_task/const/colors_const.dart';

class TokenLeasingTab extends StatefulWidget {
  const TokenLeasingTab({Key? key}) : super(key: key);

  @override
  State<TokenLeasingTab> createState() => _TokenLeasingTabState();
}

class _TokenLeasingTabState extends State<TokenLeasingTab> {
  int defaultTab = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              defaultTab = 0;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tokens",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: defaultTab == 0 ? black : darkGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 2),
                height: 2,
                width: 15,
                color: defaultTab == 0 ? lightBlue : white,
              )
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              defaultTab = 1;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Leasing",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: defaultTab == 1 ? black : darkGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: 2,
                width: 15,
                color: defaultTab == 1 ? lightBlue : white,
              )
            ],
          ),
        ),
      ],
    );
  }
}
