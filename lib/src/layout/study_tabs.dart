import 'package:flutter/material.dart';
import 'package:flutter_proffy/src/views/favorites.dart';
import 'package:flutter_proffy/src/widgets/my_app_bar.dart';
import 'package:flutter_proffy/src/widgets/my_nav_bar.dart';
import 'package:flutter_proffy/src/views/teacher_list.dart';

class StudyTabs extends StatefulWidget {
  const StudyTabs({Key key}) : super(key: key);

  @override
  _StudyTabsState createState() => _StudyTabsState();
}

class _StudyTabsState extends State<StudyTabs> {
  int navIndex = 0;

  final pages = List<Widget>.unmodifiable([
    TeacherList(),
    Favorites(),
  ]);

  final iconList = List<IconData>.unmodifiable([
    Icons.tv,
    Icons.favorite,
  ]);

  final titleList = List<String>.unmodifiable([
    'Proffys',
    'Favoritos',
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MyAppBar(),
        preferredSize: Size(double.infinity, 56),
      ),
      backgroundColor: Color(0xfff0f0f7),
      body: pages[navIndex],
      bottomNavigationBar: MyNavBar(
        icons: iconList,
        titles: titleList,
        onPressed: (i) => setState(() => navIndex = i),
        activeIndex: navIndex,
      ),
    );
  }
}
