import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff8257E5),
      elevation: 0.0,
      leading: IconButton(
        icon: Image(
          image: AssetImage('assets/icons/back.png'),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Image(
            image: AssetImage('assets/images/logo.png'),
            alignment: Alignment.centerRight,
          ),
        ),
      ],
    );
  }
}
