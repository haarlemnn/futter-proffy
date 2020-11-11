import 'package:flutter/material.dart';
import 'package:flutter_proffy/src/widgets/header.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Header(
          title: 'Meus Proffys favoritos',
        ),
      ],
    );
  }
}
