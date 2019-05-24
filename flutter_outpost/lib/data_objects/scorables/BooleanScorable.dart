import 'package:flutter/material.dart';

import 'Scorable.dart';

class BooleanScorable extends Scorable{
  @override
  Scorable fromJson() {
    // TODO: implement fromJson
    return null;
  }

  @override
  String toJson() {
    // TODO: implement toJson
    return null;
  }

  @override
  DataType type() {
    return DataType.BOOLEAN;
  }

  @override
  bool typedUpdateData(dynamic value) {
    this.data = data;
    return true;
  }

  @override
  Widget getScorableDefiner() {
    // TODO: implement getScorableDefiner
    return null;
  }


}