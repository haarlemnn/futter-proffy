import 'package:flutter/material.dart';
import 'package:flutter_proffy/src/widgets/header.dart';
import 'package:flutter_proffy/src/widgets/select.dart';
import 'package:flutter_proffy/src/widgets/teacher_item.dart';

class TeacherList extends StatefulWidget {
  TeacherList({Key key}) : super(key: key);

  @override
  _TeacherListState createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  final _formKey = GlobalKey<FormState>();
  String _selectedSubject;
  String _selectedWeekDay;
  String _selectedTime;
  bool _isFiltersVisible = true;

  final _subjectItems = List<DropdownMenuItem>.unmodifiable([
    DropdownMenuItem(
      child: Text(
        'Artes',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Artes',
    ),
    DropdownMenuItem(
      child: Text(
        'Biologia',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Biologia',
    ),
    DropdownMenuItem(
      child: Text(
        'Ciências',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Ciencias',
    ),
    DropdownMenuItem(
      child: Text(
        'Física',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Fisica',
    ),
    DropdownMenuItem(
      child: Text(
        'Geografia',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Geografia',
    ),
    DropdownMenuItem(
      child: Text(
        'Inglês',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Ingles',
    ),
    DropdownMenuItem(
      child: Text(
        'Matemática',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Matematica',
    ),
    DropdownMenuItem(
      child: Text(
        'Português',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Portugues',
    ),
    DropdownMenuItem(
      child: Text(
        'Química',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: 'Quimica',
    ),
  ]);

  final _weekDayItems = List<DropdownMenuItem>.unmodifiable([
    DropdownMenuItem(
      child: Container(
        child: Text(
          'Domingo',
          style: TextStyle(
            color: Color(0xff32264D),
          ),
        ),
      ),
      value: '0',
    ),
    DropdownMenuItem(
      child: Text(
        'Segunda-feira',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: '1',
    ),
    DropdownMenuItem(
      child: Text(
        'Terça-feira',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: '2',
    ),
    DropdownMenuItem(
      child: Text(
        'Quarta-feira',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: '3',
    ),
    DropdownMenuItem(
      child: Text(
        'Quinta-feira',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: '4',
    ),
    DropdownMenuItem(
      child: Text(
        'Sexta-feira',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: '5',
    ),
    DropdownMenuItem(
      child: Text(
        'Sábado',
        style: TextStyle(
          color: Color(0xff32264D),
        ),
      ),
      value: '6',
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      child: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: [
          Header(
            hasFilters: _isFiltersVisible,
            title: 'Proffys disponíveis',
            headerRight: IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.white,
                size: 32.0,
              ),
              onPressed: () {
                setState(() => _isFiltersVisible = !_isFiltersVisible);
              },
            ),
            filters: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _isFiltersVisible ? 1 : 0,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Select(
                        items: _subjectItems,
                        label: 'Matéria',
                        hint: 'Selecione uma matéria',
                        selectedValue: _selectedSubject,
                        onChange: (value) =>
                            setState(() => _selectedSubject = value),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenSize.width * 0.38,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Select(
                                  items: _weekDayItems,
                                  label: 'Dia da semana',
                                  hint: 'Selecione um dia',
                                  selectedValue: _selectedWeekDay,
                                  onChange: (value) =>
                                      setState(() => _selectedWeekDay = value),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.38,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Horário',
                                  style: TextStyle(
                                    color: Color(0xffD4C2FF),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                      helpText: 'Selecione um horário',
                                      cancelText: 'Cancelar',
                                    ).then((time) => {
                                          if (time != null)
                                            setState(() => _selectedTime =
                                                '${time.format(context)}')
                                        });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.0, 4.0, 0.0, 16.0),
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                                    width: screenSize.width,
                                    height: 50.0,
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                    ),
                                    child: Text(
                                      _selectedTime ?? '00:00',
                                      style: TextStyle(
                                        color: _selectedTime != null
                                            ? Color(0xff32264D)
                                            : Color(0xffC1BCCC),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: screenSize.width,
              height: _isFiltersVisible
                  ? screenSize.height * 0.25
                  : screenSize.height * 0.55,
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: ScrollConfiguration(
                behavior: ScrollBehavior()
                  ..buildViewportChrome(context, null, AxisDirection.down),
                child: ListView(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  children: [
                    TeacherItem(),
                    TeacherItem(),
                    TeacherItem(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
