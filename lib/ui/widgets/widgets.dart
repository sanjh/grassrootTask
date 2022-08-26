import 'package:flutter/material.dart';

showBottomsheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Open Bottom sheet'),
            ],
          ),
        ),
      );
    },
  );
}

Widget gape({required double d, required bool isWidth}) {
  if (isWidth) {
    return SizedBox(
      width: d,
    );
  } else {
    return SizedBox(
      height: d,
    );
  }
}
