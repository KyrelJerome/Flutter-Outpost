import 'package:flutter/material.dart';

import 'Scorable.dart';

class BooleanScorable extends Scorable{
  @override
  Scorable fromJson(String json) {
    
    return null; 
  }

  @override
  Map<String,dynamic> toJson() {
    
    return {
      'dataType':dataType,
      'labelName': labelName,
      'data': data,
      'label': label,
      'locked': locked,
      'DateTime': lastUpdate,
    };
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
