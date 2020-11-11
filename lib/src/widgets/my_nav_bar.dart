import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  final List<IconData> icons;
  final List<String> titles;
  final Function(int) onPressed;
  final int activeIndex;

  MyNavBar({
    Key key,
    @required this.icons,
    @required this.titles,
    @required this.onPressed,
    @required this.activeIndex,
  })  : assert(icons != null),
        super(key: key);

  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < widget.icons.length; i++)
          Expanded(
            child: GestureDetector(
              child: Container(
                height: 64.0,
                color: widget.activeIndex == i
                    ? Color(0xffEBEBF5)
                    : Color(0xffFAFAFC),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      widget.icons[i],
                      color: widget.activeIndex == i
                          ? Color(0xff8257E5)
                          : Color(0xffC1BCCC),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text(
                        widget.titles[i],
                        style: TextStyle(
                          color: widget.activeIndex == i
                              ? Color(0xff32264D)
                              : Color(0xffC1BCCC),
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w700,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => widget.onPressed(i),
            ),
          ),
      ],
    );
  }
}
