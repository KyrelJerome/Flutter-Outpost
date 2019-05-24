
import 'package:flutter/material.dart';
import 'package:flutter_outpost/data_objects/scorables/Scorable.dart';

class IntegerScorable extends Scorable {
  IntegerScorable(){
    
  }
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
    return DataType.INTEGER;
  }

  @override
  bool typedUpdateData(dynamic value) {
    if(value.runtimeType == int){
    this.data = value;
    return true;
    }
    return false;
  }

  @override
Widget getScorableDefiner() {
    // TODO: implement getScorableDefiner
    return null;
  }
}
