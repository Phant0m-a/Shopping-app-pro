import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_table/responsive_table.dart';
import 'package:davi/davi.dart';

class PaymentTable extends StatefulWidget {
  const PaymentTable({super.key});

  @override
  State<PaymentTable> createState() => _PaymentTableState();
}

class _PaymentTableState extends State<PaymentTable> {
  DaviModel<Person>? _model;

  @override
  void initState() {
    super.initState();

    List<Person> rows = [];

    Random random = Random();
    for (int i = 1; i < 500; i++) {
      rows.add(Person('User $i', 20 + random.nextInt(50), random.nextInt(999)));
    }
    rows.shuffle();

//the model
    _model = DaviModel<Person>(
        rows: rows,
        columns: [
          DaviColumn(name: 'Name', stringValue: (row) => row.name),
          DaviColumn(name: 'Age', intValue: (row) => row.age),
          DaviColumn(name: 'Value', intValue: (row) => row.value),
          DaviColumn(
              name: 'Editable',
              sortable: false,
              cellBuilder: _buildField, //the builder
              cellBackground: (rowData) =>
                  rowData.data.valid ? null : Colors.red[800])
        ],
        alwaysSorted: true,
        multiSortEnabled: true);
  }

//building this
  Widget _buildField(BuildContext context, DaviRow<Person> rowData) {
    return TextFormField(
        initialValue: rowData.data.editable,
        style:
            TextStyle(color: rowData.data.valid ? Colors.black : Colors.white),
        onChanged: (value) => _onFieldChange(value, rowData.data));
  }

  void _onFieldChange(String value, Person person) {
    final wasValid = person.valid;
    person.editable = value;
    if (wasValid != person.valid) {
      setState(() {
        // rebuild
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Davi<Person>(_model);
  }
}

class Person {
  Person(this.name, this.age, this.value);

  final String name;
  final int age;
  final int value;

  bool _valid = true;

  bool get valid => _valid;

  String _editable = '';

  String get editable => _editable;

  set editable(String value) {
    _editable = value;
    _valid = _editable.length < 6;
  }
}
