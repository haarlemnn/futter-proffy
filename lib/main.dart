import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_proffy/src/routes/app_routes.dart';
import 'package:flutter_proffy/src/layout/study_tabs.dart';
import 'package:flutter_proffy/src/views/give_classes.dart';

import 'src/views/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final systemUiOverlayStyle = SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff8257E5),
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarColor: Color(0xff8257E5),
    statusBarIconBrightness: Brightness.light,
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: systemUiOverlayStyle,
      child: MaterialApp(
        title: 'Proffy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Poppins',
        ),
        routes: {
          AppRoutes.LANDING: (context) => Landing(),
          AppRoutes.GIVE_CLASSES: (context) => GiveClasses(),
          AppRoutes.STUDY_TABS: (context) => StudyTabs(),
        },
      ),
    );
  }
}
