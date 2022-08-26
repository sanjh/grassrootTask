import 'package:flutter/material.dart';
import 'package:ui_task/const/colors_const.dart';
import 'package:ui_task/ui/widgets/widgets.dart';

class BottomNabBar extends StatelessWidget {
  const BottomNabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: white, border: Border.all(color: lightlightGrey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.account_balance_wallet),
          const Icon(
            Icons.sync_alt,
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: () => showBottomsheet(context),
            child: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.blue.withOpacity(0.3),
                child: const Icon(
                  Icons.add,
                )),
          ),
          const Icon(
            Icons.list,
            color: Colors.grey,
          ),
          const Icon(
            Icons.settings,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
