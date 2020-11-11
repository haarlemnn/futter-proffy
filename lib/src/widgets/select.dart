import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  final List<DropdownMenuItem> items;
  final String label;
  final String hint;
  final String selectedValue;
  final Function(String) onChange;

  Select({
    Key key,
    @required this.items,
    @required this.label,
    @required this.hint,
    @required this.selectedValue,
    @required this.onChange,
  }) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              color: Color(0xffD4C2FF),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 16.0),
            child: DropdownButtonFormField(
              hint: Container(
                width: widget.label != 'Matéria'
                    ? screenSize.width * 0.19
                    : screenSize.width * 0.50,
                child: Text(
                  widget.hint,
                  style: TextStyle(
                    color: Color(0xffC1BCCC),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              iconSize: 20.0,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.all(14.0),
              ),
              style: TextStyle(
                color: Color(0xffC1BCCC),
              ),
              items: widget.items,
              value: widget.selectedValue,
              onChanged: (value) {
                setState(() => widget.onChange(value));
              },
            ),
          ),
        ],
      ),
    );
  }
}
