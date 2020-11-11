import 'package:flutter/material.dart';

class TeacherItem extends StatefulWidget {
  TeacherItem({Key key}) : super(key: key);

  @override
  _TeacherItemState createState() => _TeacherItemState();
}

class _TeacherItemState extends State<TeacherItem> {
  bool _errorAvatar = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Container(
        constraints: BoxConstraints(maxWidth: screenSize.width * 0.92),
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 32.0,
                    backgroundImage: NetworkImage(
                      'https://avatars3.githubusercontent.com/u/42103628?s=460&u=4bd175ec1c30a47c88b80bf420d22e1af2be3da4&v=4',
                    ),
                    child: _errorAvatar
                        ? Icon(
                            Icons.person,
                            color: Colors.white,
                          )
                        : null,
                    onBackgroundImageError: (_, __) {
                      setState(() => _errorAvatar = true);
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0),
                    constraints: BoxConstraints(
                      maxWidth: screenSize.width * 0.50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Haarlem Notoroberto Neto',
                          style: TextStyle(
                            color: Color(0xff32264d),
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Química',
                          style: TextStyle(
                            color: Color(0xff6A6180),
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(
                  color: Color(0xff6A6180),
                  fontSize: 14.0,
                  height: 1.8,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24.0),
              padding: EdgeInsets.all(24.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffFAFAFC),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Preço/hora',
                        style: TextStyle(
                          color: Color(0xff6A6180),
                          fontSize: 16.0,
                        ),
                      ),
                      Text('  '),
                      Text(
                        'RS 40,00',
                        style: TextStyle(
                          color: Color(0xff8257E5),
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () {},
                          splashColor: Colors.black26,
                          highlightColor: Colors.black12,
                          child: Container(
                            width: 56.0,
                            height: 56.0,
                            margin: EdgeInsets.only(right: 8.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xff8257E5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: Image(
                              image:
                                  AssetImage('assets/icons/heart-outline.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.black26,
                            highlightColor: Colors.black12,
                            child: Container(
                              height: 56.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff04D361),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/icons/whatsapp.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      'Entrar em contato',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Archivo',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.0,
                                      ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
