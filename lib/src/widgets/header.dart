import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final bool hasFilters;
  final String title;
  final Widget headerRight;
  final Widget filters;

  Header({
    Key key,
    this.hasFilters,
    this.title,
    this.headerRight,
    this.filters,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      constraints: BoxConstraints(
          minHeight: 150.0,
          maxHeight:
              widget.headerRight != null && widget.hasFilters ? 320.0 : 150.0),
      decoration: BoxDecoration(
        color: Color(0xff8257E5),
      ),
      width: screenSize.width,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 40.0),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width - (screenSize.width * 0.5),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Archivo',
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0,
                      height: 1.3,
                    ),
                  ),
                ),
                widget.headerRight ?? Container(),
              ],
            ),
            widget.filters ?? Container(),
          ],
        ),
      ),
    );
  }
}
