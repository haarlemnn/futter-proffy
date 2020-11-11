import 'package:flutter/material.dart';
import 'package:flutter_proffy/src/widgets/my_app_bar.dart';

class GiveClasses extends StatelessWidget {
  const GiveClasses({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: MyAppBar(),
        preferredSize: Size(double.infinity, 56),
      ),
      backgroundColor: Color(0xff8257E5),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/give-classes-background.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quer ser um Proffy?',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w700,
                        fontSize: 32.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Text(
                        'Para começar, você precisa se cadastrar na nossa plataforma web.',
                        style: TextStyle(
                          color: Color(0xffc4d2ff),
                          fontSize: 16.0,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40.0),
              child: ButtonTheme(
                minWidth: screenSize.width,
                height: 58.0,
                buttonColor: Color(0xff04d361),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Ir para a plataforma Web.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Archivo',
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
