import 'package:ui_task/const/colors_const.dart';
import 'package:ui_task/ui/widgets/appbar.dart';
import 'package:ui_task/ui/widgets/bottom_navigation.dart';
import 'package:ui_task/ui/widgets/horizontal_view.dart';
import 'package:ui_task/ui/widgets/search.dart';
import 'package:ui_task/ui/widgets/token_leasing_tab.dart';
import 'package:ui_task/ui/widgets/tokens.dart';

import 'package:flutter/material.dart';
import 'package:ui_task/ui/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: const AppBarCustom(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Wallet",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: borderColor, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      "Mobile Team",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4, left: 5),
                      child: const RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.code,
                            size: 18,
                            color: borderColor,
                          )),
                    )
                  ],
                ),
                gape(d: 15.0, isWidth: false),
                const HorizontalView(),
                gape(d: 15.0, isWidth: false),
                const TokenLeasingTab(),
                gape(d: 15.0, isWidth: false),
                const Search(),
                gape(d: 10.0, isWidth: false),
                const Tokens()
              ],
            ),
          ),
          bottomNavigationBar: const BottomNabBar()),
    );
  }
}
