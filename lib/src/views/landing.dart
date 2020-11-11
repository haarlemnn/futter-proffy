import 'package:flutter/material.dart';
import 'package:flutter_proffy/src/routes/app_routes.dart';

class Landing extends StatelessWidget {
  const Landing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Material(
      color: Color(0xff8257E5),
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/landing.png'),
            ),
            Container(
              width: screenSize.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seja bem-vindo,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'O que deseja fazer?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    margin: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: Color(0xff9871f5),
                          borderRadius: BorderRadius.circular(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.STUDY_TABS);
                            },
                            splashColor: Colors.black26,
                            highlightColor: Colors.black12,
                            child: Container(
                              width:
                                  screenSize.width - (screenSize.width * 0.62),
                              height: 135,
                              padding: EdgeInsets.only(left: 24.0, right: 24.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: AssetImage('assets/icons/study.png'),
                                  ),
                                  Text(
                                    'Estudar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Color(0xff04d361),
                          borderRadius: BorderRadius.circular(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.GIVE_CLASSES);
                            },
                            splashColor: Colors.black26,
                            highlightColor: Colors.black12,
                            child: Container(
                              width:
                                  screenSize.width - (screenSize.width * 0.62),
                              height: 135,
                              padding: EdgeInsets.only(left: 24.0, right: 24.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/icons/give-classes.png'),
                                  ),
                                  Text(
                                    'Dar aulas',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 140.0),
                    margin: EdgeInsets.only(top: 30.0),
                    child: Stack(
                      children: [
                        Text(
                          'Total de 0 conexões já realizadas ',
                          style: TextStyle(
                            color: Color(0xffD4C2FF),
                            fontSize: 12.0,
                          ),
                        ),
                        Positioned(
                          bottom: 3,
                          right: 60,
                          child: Image(
                            image: AssetImage('assets/icons/heart.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
