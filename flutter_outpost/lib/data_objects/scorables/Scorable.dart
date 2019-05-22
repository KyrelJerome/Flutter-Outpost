import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class Scorable {
  DataType dataType;
  String data; // In json if data is a list.
  String labelName;
  bool locked;
  List valueBounds;
  DateTime lastUpdate;
  Scorable fromJson();
  String toJson();
  bool typedUpdateData(String value);
  bool typedUpdateLabel(String value);
//TODO: Fix updateData, define a load and save system.  `
  DataType type();
  void updateData(String value) {
    typedUpdateData(value);
    _updateTimeChanged();
  }

  dynamic updateLabel(String value) {
    typedUpdateLabel(value);
    _updateTimeChanged();
  }

  void lock() {
    this.locked = true;
    _updateTimeChanged();
  }

  void unlock() {
    this.locked = false;
    _updateTimeChanged();
  }

  bool equals(dynamic d) {
    return d is Scorable &&
        d.dataType == this.dataType &&
        d.labelName == this.labelName;
  }

  void _updateTimeChanged() {
    lastUpdate = DateTime.now();
  }

  Widget getGeneralScorableChooser() {
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text("DataField"),
              ],
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.edit),
          )
        ],
      ),
    );
  }

  Widget   getScorableDefiner();
}

enum DataType {
  TIME,
  INTEGER,
  BOOLEAN,
  TEXTUAL,
  WEIGHTED_ORDINAL,
  NOMINAL,
  ORDINAL,
  LINK
}
List workingDatatypes = [DataType.INTEGER, DataType.BOOLEAN];
